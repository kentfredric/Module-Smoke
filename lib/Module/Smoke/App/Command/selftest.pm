use strict;
use warnings;

## no critic ( NamingConventions::Capitalization )
package Module::Smoke::App::Command::selftest;

# ABSTRACT: Convenience self-test for me while developing'

use Module::Smoke::App -command;

sub abstract { return 'Convenience self-test for me while developing' }

sub description {
  return <<'EOF' }
This command exists as a convenience method for me, the author,
to make it easier for me to test my code without writing seperate tests
EOF

sub execute {
  my $self = shift;
  return $self->smoker();
}

1;

