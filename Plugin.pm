package Plugins::PlayMTS::Plugin;

use strict;
use warnings;

use base qw(Slim::Plugin::Base);

use Slim::Utils::Log;
use Plugins::PlayMTS::Register;

my $log = Slim::Utils::Log->addLogCategory({
    category     => 'plugin.playmts',
    defaultLevel => 'INFO',
    description  => 'PLUGIN_PLAYMTS',
});

sub initPlugin {
    my $class = shift;

    my $version = $class->_pluginDataFor('version') || 'unknown';
    $log->info("Initializing PlayMTS plugin $version");

    Plugins::PlayMTS::Register->registerFormatHandler();

    $class->SUPER::initPlugin(@_);
}

sub getDisplayName { 'PLUGIN_PLAYMTS' }

1;
