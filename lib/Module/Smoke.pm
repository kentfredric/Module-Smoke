use strict;
use warnings;

package Module::Smoke;

# ABSTRACT: Deep smoke test a module in a clean environment

use Moose;
use namespace::autoclean;

no Moose;
__PACKAGE__->meta->make_immutable;

#

1;
