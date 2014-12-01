use strict;
use warnings;
# ABSTRACT: Initialize a repository, probably where I am
package Archive::BagIt::DotBagIt::App::Command::Init;

use Archive::BagIt::DotBagIt::App -command;

sub usage_desc{ 'Initialize a repository, probably where I am'; }

    # gets executed on "myapp command" but not on "myapp command command"
    # there MyApp::Cmd::Command still gets instantiated and for the chain
sub execute {
    my ( $self, $opt, $args ) = @_;
    use Archive::BagIt::DotBagIt;

    my $dotbagit=Archive::BagIt::DotBagIt->init_metadata('.');
}


1;
