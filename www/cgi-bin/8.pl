#!/usr/bin/perl
use CGI qw(:standard);
use DBI;
print header();
print start_html();

$name=param("name");
$age=param("age");
$con=DBI->connect("DBI:mysql:web","sirmvit","cse");

$query1=$con->prepare("insert into student_info values(?,?)");
$query1->execute($name,$age);

$query2=$con->prepare("select * from student2");
$query2->execute();
print "Data in table:";
while(@row=$query2->fetchrow_array())
{
	print "@row <BR>";
}

print end_html();
