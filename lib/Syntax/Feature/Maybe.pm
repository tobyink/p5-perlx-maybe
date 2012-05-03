package Syntax::Feature::Maybe;

use 5.008;
use strict;
use PerlX::Maybe qw//;

BEGIN {
	$Syntax::Feature::Maybe::AUTHORITY = 'cpan:TOBYINK';
	$Syntax::Feature::Maybe::VERSION   = '0.002';
}

sub install
{	
	my ($class, %args) = @_;
	my $into = delete $args{into};
	
	foreach my $f (qw/maybe/)
	{
		no strict 'refs';
		*{"$into\::$f"} = \&{"PerlX::Maybe::$f"};
	}
}

__FILE__
__END__

=head1 NAME

Syntax::Feature::Maybe - use syntax qw/maybe/

=head1 DESCRIPTION

Tiny shim between L<PerlX::Maybe> and L<syntax>.

=head1 BUGS

Please report any bugs to
L<http://rt.cpan.org/Dist/Display.html?Queue=PerlX-Maybe>.

=head1 SEE ALSO

L<PerlX::Maybe>, L<syntax>.

=head1 AUTHOR

Toby Inkster E<lt>tobyink@cpan.orgE<gt>.

=head1 COPYRIGHT AND LICENCE

This software is copyright (c) 2012 by Toby Inkster.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=head1 DISCLAIMER OF WARRANTIES

THIS PACKAGE IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED
WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF
MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.

