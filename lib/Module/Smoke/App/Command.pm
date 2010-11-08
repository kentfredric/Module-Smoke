use strict;
use warnings;

package Module::Smoke::App::Command;

# ABSTRACT: App::Command package for Module::Smoke

use App::Cmd::Setup -command;
use Module::Smoke;

sub smoker {
    my $self = shift;
    return Module::Smoke->new( @_ );
}

1;
