use strict;
use warnings;

## no critic ( NamingConventions::Capitalization )
package Module::Smoke::Installer::cpanm;

# ABSTRACT: Install modules with cpanm.

use Moose;
use namespace::autoclean;
with 'Module::Smoke::Role::Installer';

=method install

=cut

sub install {
}
no Moose;
__PACKAGE__->meta->make_immutable;
1;
