package JavaScript::Librarian::Library;

use strict;
use base 'Algorithm::Dependency::Source';

use vars qw{$VERSION};
BEGIN {
	$VERSION = '0.02';
}





#####################################################################
# Algorithm::Dependency::Source Methods

# Overload ->load to add checking to make sure that all the ::Book
# object have a valid ->path.
sub load {
	my $self  = shift;
	my $class = ref $self;

	# Call the normal method
	$self->SUPER::load or return undef;

	# Check that all the items are Book objects
	foreach my $Book ( $self->items ) {
		next if UNIVERSAL::isa($Book, 'JavaScript::Library::Book');
		die "$class\::_load_item_list returned something that was not an Algorithm::Dependency::Item";
	}

	1;
}

1;