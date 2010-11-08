use strict;
use warnings;

package Module::Smoke::Environment::Empty;

# ABSTRACT: Test things in an empty local::lib

use Moose;
use namespace::autoclean;

with 'Module::Smoke::Role::Environment';
use local::lib qw();
use File::Temp qw();

=method generate_environment

=cut

sub generate_environment {
}
no Moose;
__PACKAGE__->meta->make_immutable;

1;
