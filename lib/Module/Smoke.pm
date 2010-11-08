use strict;
use warnings;

package Module::Smoke;

# ABSTRACT: Deep smoke test a module in a clean environment

use Moose;
use MooseX::Types::Perl qw( -all );
use MooseX::Types::Moose qw( -all );
use MooseX::Types;
use Moose::Autobox;
use UNIVERSAL::require;
use Carp qw();
use namespace::autoclean;

sub _expand_module {
  my ( $self, $config, $module ) = @_;
  return $module unless $module =~ /^-/;
  $config->{rootns} = $self->meta->name unless exists $config->{rootns};
  if ( not exists $config->{fullprefix} ) {
    if ( not exists $config->{prefix} ) {
      $config->{fullprefix} = $config->{rootns} . q{::};
    }
    else {
      $config->{fullprefix} = $config->{rootns} . q{::} . $config->{prefix} . q{::};
    }
  }
  $module =~ s[^-][ $config->{fullprefix} ]e;
  return $module;
}

has environment_name        => ( isa => Str,        is => 'rw', default    => '-Empty' );
has environment_module_name => ( isa => ModuleName, is => 'rw', lazy_build => 1 );
has environment_args        => ( isa => HashRef,    is => 'rw', lazy_build => 1 );
has environment             => (
  isa        => role_type( _expand_module( __PACKAGE__, { prefix => 'role' }, '-Environment' ) ),
  is         => 'rw',
  lazy_build => 1,
);

sub _build_environment_module_name {
  my ($self) = @_;
  return $self->_expand_module( { prefix => 'Environment' }, $self->environment_name );
}

sub _build_environment_args {
  return {};
}

sub _build_environment {
  my ($self) = @_;
  ## no critic (ProhibitPunctuationVars)
  $self->environment_module_name->require or Carp::croak($@);
  return $self->environment_module_name->new( $self->environment_args->flatten );
}

no Moose;
__PACKAGE__->meta->make_immutable;

#

1;
