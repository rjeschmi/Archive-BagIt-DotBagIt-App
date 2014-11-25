use strict;
use warnings;
package Archive::BagIt::DotBagIt::App::Cmd::Init;

use Moo;
use MooX::Cmd;

    # gets executed on "myapp command" but not on "myapp command command"
    # there MyApp::Cmd::Command still gets instantiated and for the chain
sub execute {
    my ( $self, $args_ref, $chain_ref ) = @_;
    my @chain = @{$chain_ref};   # in this case ( $myapp, $myapp_cmd_command )
    die ("running with init");
}


1;
