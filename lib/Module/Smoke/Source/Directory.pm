use strict;
use warnings;

package Module::Smoke::Source::Directory;
use Moose;
use namespace::autoclean;

# ABSTRACT: Test an already extracted on-disk thing.
with 'Module::Smoke::Role::Source';

=method root_dir

=cut

sub root_dir {
}
no Moose;
__PACKAGE__->meta->make_immutable;

1;
