#!/usr/bin/perl-w
use strict;
use warnings;
use autodie;
die "usage: $0  " unless @ARGV==3;

my $in=shift;
my $in2=shift;
my $ot=shift;

open my $o, ">",$ot;
open my $i, "<",$in;
while (my $l =<$i>){
        if ($l !~ /#/ ){
                my @x=split /\t/,$l;
                open my $i2,"<",$in2;
                while (my $l2=<$i2>){
                        my @d =split /\t/,$l2;
                        if ($d[1] eq $x[0] && ($d[3] >= $x[1] && $d[4] <=$x[1])) {
                                    print "$l$l2";
                        }
                }
         }
}
