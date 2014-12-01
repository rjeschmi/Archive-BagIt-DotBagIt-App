use strict;
use warnings;
# ABSTRACT: What is the current status of this dotbagit
package Archive::BagIt::DotBagIt::App::Command::Status;

use Archive::BagIt::DotBagIt::App -command;

sub usage_desc{ 'Initialize a repository, probably where I am'; }

    # gets executed on "myapp command" but not on "myapp command command"
    # there MyApp::Cmd::Command still gets instantiated and for the chain
sub execute {
    my ( $self, $opt, $args ) = @_;
    use Archive::BagIt::DotBagIt;
    use Data::Printer;
  
    my $bag_path; 
    if (!@$args ) {
        $bag_path=".";
    }
    else {
        $bag_path = shift @$args;
    }
    
    my $dotbagit=Archive::BagIt::DotBagIt->new($bag_path);

    my @payload = $dotbagit->payload_files;

    my @manifest_files $dotbagit->manifest_files;

    my @untracked_files = @payload - @manifest;

    #might need to track up to date files
    #create a plugin for manifest creation
    #plugin for quick status
}


1;
