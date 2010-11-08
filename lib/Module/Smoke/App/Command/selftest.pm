use strict;
use warnings;

package Module::Smoke::App::Command::selftest;

# ABSTRACT: Conveninece self-test for me while developing'

use Module::Smoke::App -command;

sub abstract { 'Conveninece self-test for me while developing' }
sub description  { <<'EOF' }
This command exists as a convenience method for me, the author,
to make it easier for me to test my code without writing seperate tests
EOF

sub execute {
  my $self = shift;
  $self->smoker();
}

1;

