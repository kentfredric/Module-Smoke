use strict;
use warnings;

package Module::Smoke::Role::Source;

# ABSTRACT: A role for things that represent a top level module under scrutiny
use Moose::Role;

requires 'root_dir';

no Moose::Role;
1;
