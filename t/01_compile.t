#!/usr/bin/perl -w

# Compile testing for JavaScript::Librarian

use strict;
use lib ();
use UNIVERSAL 'isa';
use File::Spec::Functions ':ALL';
BEGIN {
	$| = 1;
	unless ( $ENV{HARNESS_ACTIVE} ) {
		require FindBin;
		chdir ($FindBin::Bin = $FindBin::Bin); # Avoid a warning
		lib->import( catdir( updir(), updir(), 'modules') );
	}
}

use Test::More tests => 4;

# Check their perl version
ok( $] >= 5.005, "Your perl is new enough" );

# Does the module load
use_ok('JavaScript::Librarian'          );
use_ok('JavaScript::Librarian::Library' );
use_ok('JavaScript::Librarian::Book'    );

exit(0);
