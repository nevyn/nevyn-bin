#!/usr/bin/perl
#
# A little postprocessing script to adapt Slic3r <http://slic3r.org> gcode output
#  for a Techzone Huxley <http://reprap.org/wiki/TechZoneHuxley>.
#
# Copyright 2012 Guy 'DeuxVis' P.
#
# This program is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 3 of the License, or
#  (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
#  along with this program.  If not, see <http://www.gnu.org/licenses/>.


use strict;
use warnings;
use English '-no_match_vars';
use File::Temp qw/ tempfile /;
use File::Copy qw/ move /;


# You can change those to suit your machine capabilities.
my $Z_start_speed = "80.0";
my $Z_full_speed = "110.0";


my $file_in = $ARGV[0] or die( "Need gcode file name as first argument !");
my ($file_out_h, $file_out_name) = tempfile() or die( "Cannot open temp work file !" );


while (<>) {

  # I do manual heatup - not sure my fimware does M109 properly anyway.
  if ($_ =~ /^M109/) {
    print $file_out_h ";$_";

  # Z movements use their own speed
  } elsif ($_ =~ /^G1 Z(\d+\.\d*) F(\d+\.\d*.*)/) {
    print $file_out_h "G1 F$Z_start_speed\n";
    print $file_out_h "G1 Z$1 F$Z_full_speed\n";
    print $file_out_h "G1 F$2\n";

  # Monotronics old firmware doesn't know that G1 lines starting with a F
  #  means "starting speed", so we set a separate line for that.
  # Commented out as next step will also do that.
  #} elsif ($_ =~ /^G1 F(\d+\.\d*) (.+)/) {
  #  print $file_out_h "G1 F$1\n";
  #  print $file_out_h "G1 $2\n";

  # Let firmware do non-Z acceleration, all movements will start at destination speed.
  } elsif ($_ =~ /^G1(.*) F(\d+\.\d*)(.*)/) {
    print $file_out_h "G1 F$2\n";
    print $file_out_h "G1$1$3\n";

  # Comment out anything suspicious - ie _BRIDGE_FAN_END bug in slic3r 0.7.0.
  } elsif ($_ ne "\n" and $_ =~ /^\s*[^GM;]/) {
    my $displayLine = $_;
    chomp( $displayLine);
    my $warnMsg = "$PROGRAM_NAME found and commented out suspicious GCode '$displayLine'";
    warn( $warnMsg );

# You can change those to suit your machine capabilities.
my $Z_start_speed = "80.0";
my $Z_full_speed = "110.0";
    print $file_out_h ";$_";

  # Anything else passes through unmodified.
  } else {
    print $file_out_h "$_";
  }
}

close $file_out_h;
move( $file_out_name, $file_in );
