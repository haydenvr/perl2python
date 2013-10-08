#!/usr/bin/perl -w
# Written by andrewt@cse.unsw.edu.au for COMP2041
# run as duplicate_first_names.pl /home/cs2041/public_html/11s2/lec/perl/examples/enrollments
# Report cases where there are multiple people
# of the same same first name enrolled in a course

while ($line = <>) {
    @fields = split /\|/, $line;
    $full_name = $fields[2];
    if ($full_name =~ /.*,\s+(\S+)/) {
    	$first_name = $1;
    	$names{$first_name}++;
	}
}

foreach $first_name (sort keys %names) {
    printf "There are %d people with the first name $first_name\n", $names{$first_name};
}
