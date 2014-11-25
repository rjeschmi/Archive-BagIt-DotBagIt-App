use strict;
use warnings;
package Archive::BagIt::DotBagIt::App;

# VERSION

# ABSTRACT: An app to work with a DotBagit bag
#

use Moo;
use MooX::Cmd;
use MooX::Options
    authors => 'Rob Schmidt <rjeschmi@gmail.com>',
    description => "A commandline interface to a new DotBagIt type bag",
    synopsis => "A commandline interface to DotBagIts";

option 'debug' => ( is => 'ro');

sub execute {
    my ( $self, $args_ref, $chain_ref ) = @_;
    die ("running without a command");
}



1;


