package Plugins::PlayMTS::Importer;

use strict;
use warnings;

use Plugins::PlayMTS::Register;

sub initPlugin {
    my $class = shift;

    Plugins::PlayMTS::Register->registerFormatHandler();
    return 1;
}

sub startScan {
    my $class = shift;
    return;
}

1;
