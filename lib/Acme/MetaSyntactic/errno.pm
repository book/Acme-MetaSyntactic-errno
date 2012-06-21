package Acme::MetaSyntactic::errno;
use strict;
use Acme::MetaSyntactic::MultiList;
our @ISA     = qw( Acme::MetaSyntactic::MultiList );
our $VERSION = '1.000';

use Errno ();

__PACKAGE__->init(
    {   default => 'PERL',
        names   => {
            POSIX => join( ' ', @{ $Errno::EXPORT_TAGS{POSIX} } ),
            PERL  => join( ' ', keys %! ),
        },
    }
);

1;

=head1 NAME

Acme::MetaSyntactic::errno - The errno theme

=head1 DESCRIPTION

The name of all errors known to Perl via the system F<errno.h>.

The official POSIX error list is available at
L<http://pubs.opengroup.org/onlinepubs/9699919799/basedefs/errno.h.html>.

=head1 CONTRIBUTOR

Philippe Bruhat (BooK)

=head1 CHANGES

=over 4

=item *

2012-06-21 - v1.000

Published as part of the Booking.com Hackathon.

=back

=head1 SEE ALSO

L<Errno>,
L<Acme::MetaSyntactic>, L<Acme::MetaSyntactic::List>.

=cut

