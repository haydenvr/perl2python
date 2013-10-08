#!/usr/bin/perl -w
print "Enter a number:\n";
$a = <STDIN>;
if ($a < 5) {
	print "Write a bigger number:\n";
	$a = <STDIN>;
}
$follow = 1;
foreach $i (0..$a) {
    $follow *= $i;
}

print "The factorial of $a is $follow\n";

