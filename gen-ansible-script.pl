#!/usr/bin/env perl

use strict;
use warnings;

my @packages = qw/htop vim sudo ntpdate openssh-server git apache2 mysql-server php5 php-pear php5-mysql nginx/;

foreach my $pkg (@packages){
	print "  - name: $pkg install\n";
	print "    apt: pkg=$pkg state=present\n\n";
	}


