use strict;
use warnings;

package Module::Smoke::Role::Installer;

# ABSTRACT: A role for things that do the installation of things.

use Moose::Role;

requires 'install';

1;
