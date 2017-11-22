#!/usr/bin/perl
use CGI qw(:standard);
print header();
print start_html();
print "<center><b>Server information is shown below<br><br>";
print "<table border=1><tr><td><b>ENV VARIABLE</b></td>";
print "<td><b>ENV VALUE</b></td></tr>";

foreach $a(sort keys %ENV) {
    print "<tr><td>$a</td>";
    print "<td>$ENV{$a}</td></tr>";
}
print "</table></b></center></body></html>";
print end_html();
