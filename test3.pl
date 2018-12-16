#目录的操作
=pod
$dir="D:/other/*.pl";
my @file=glob($dir);
foreach(@file){
    print $_."\n";
}


opendir(DIR,".");
while($file=readdir DIR){
    print "$file"."\n";
}

$file="1";
chdir($file) or  warn "must"
#die "no have";

=cut


__END__
:注释
$total=scalar(@_);
foreach($total){

    print $_."\n";
}
