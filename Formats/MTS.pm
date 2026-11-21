package Plugins::PlayMTS::Formats::MTS;

# MPEG transport stream files are read like AVI files: see Plugins::PlayAVI::Formats::AVI
# for the tags (ffprobe, guessed from the path, Discogs id). This plugin needs
# the PlayAVI plugin.

use strict;
use warnings;
use base qw(Plugins::PlayAVI::Formats::AVI);

sub types       { qw(mts) }
sub logCategory { 'plugin.playmts' }
sub pluginName  { 'PlayMTS' }

1;
