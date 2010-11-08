use strict;
use warnings;

package Module::Smoke::Environment::Empty;

# ABSTRACT: Test things in an empty local::lib

use Moose;
with 'Module::Smoke::Role::Environment';
use local::lib qw();
use File::Temp qw();

1;
