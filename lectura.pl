#!/usr/bin/perl
use strict;
use warnings;

open(IN, "Programas de Universidades.csv") or die("Error al abrir el archivo");

my @arr = <IN>;

close(IN);

my($line) = @arr;
my $counter = 1;
while($line =~ /^([^\|]+)\|(.+)/){
  print "[$counter] $1\n";
  $counter++;
  $line = $2;
}
print "[$counter] $line\n";
