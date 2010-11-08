use strict;
use warnings;

package Module::Smoke::Role::Environment;

# ABSTRACT: A role for things that generate a build environment of sorts.
use Moose::Role;

requires 'generate_environment';

no Moose::Role;

1;
