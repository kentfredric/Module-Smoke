use strict;
use warnings;

package Module::Smoke::App::Command;

# ABSTRACT: App::Command package for Module::Smoke

use App::Cmd::Setup -command;
use Module::Smoke;

sub smoker {
  my ( $self, @rest ) = @_;
  return Module::Smoke->new(@rest);
}

1;
