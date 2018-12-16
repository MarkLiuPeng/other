#哈希的多种表示
=pod
%login=('name','lp','sex','man','age',18);
print $login{'name'}.{'age'}.\n;

%login=('name'=>'lp','sex'=>'man','age'=>18);
print $login{'name'}.\n;

%login=(-name=>'lp',-sex=>'man',-age=>18);
print $login{-sex}.\n;

@data=@datas{'-name','-age'};  #数组提取哈希
print "@data"

%test=('a'=>1,'b'=>2,'c'=>3);
@test_tow=keys %test;       #keys读取哈希键
@test_one=values %test;   #values读取哈希值
print "$test_one[0].\n.$test_one[1].\n.$test_one[2]";


if(exists($test{'c'})){     #判断哈希键是否存在
  print "have the hash key $test{'c'} ";
}else{
  print "no have";
}


$size=@test_one;     #哈希键值大小
$size=@test_tow;
print "$size\n";

delete $test{'b'};      #处理哈希键
@test_three=keys %test;
$size=@test_three;
print  "$size"

$a='a';
$num=100;
$test=($num > 99 )?"you are right":"wrong"; #三元运算符
print "$a:$test";
=cut


=pod
#逻辑语句(分支)
if,if.else,if.elsif.else;
unless,unless.elsif,unless.elsif.else;
switch;



$x=10;
unless ($x < 9) {
  print "$x>9";
  # body...
}
elsif ($x > 9){
  print  "$x<9";
}
else{
  print "$x==9"
}


$var=$o{'a'};
$q=10;
@p=(1,2,3);
%o=('a'=>1,'b'=>9,'c'=>10);


use Switch;
switch($Var){
  case 10   {print "Var"}
  case (\@p)   {print "array"}
  case (\%o)   {print "hash"}
  else        {print "other"}
}

#循环语句
#foreach,for,until

@test=(1,2,3,4);
foreach $x(@test){
  print "$x"."\n";
}

$x=$test{0};
while ($x < 10) {
  if ($x == 5){
    $x++;
    #next;     #类似于continue
    last;      #类似于break
  }
  print "$x";
  $x++;
  # body...
}

@test=(1,2,3,4);
foreach $x(@test){
  print "$x";
}continue{        #逻辑在连接
  last  if $x==2;
}

$x=0;
while($x<10){
if($x==5){
      $x++;
      redo;
  }
  print "$x";
}
continue{
    $x++;
}

<<<<<<< HEAD
=======
=cut

>>>>>>> perl
$x=10;
$str1=loop;
$str2=back;
loopback:do{
  if($x==15){
    $x++;
    goto $str1.$str2;    #跳转
  }
  print "$x"."\n";
  $x++;
}while($x<20)
<<<<<<< HEAD

#时间
sub DateFun{      #子程序(函数)
$date=localtime();
print "$date";
}
DateFun();
sub Avg{
  $num=scalar(@_);    #传入参数
  $sum=0;
  foreach  $item(@_){
    #$item++;
    $sum=$sum+$item;
  }
  $avg=$sum/$num;
  print "the array length:@_"."\n";
  print "the array firset values:$_[1]"."\n";
  print "$sum"
}

Avg(1,10,20)


sub merge{
  my @list=@_;
  print "@list";
}
@test=(1,2,3);
$test=4;
print merge(@test,$test)


=pod


$str="a";                      #全局变量

$str_test=\$str;    #引用
print  ref($str_test);      #变量引用类型;


=pod
sub  add{
  $_[0]+$_[1];
  #my $str;
  my $str_x="b";              #my 局部修饰
  print "$str";
}
print add(1,10)."\n". "$str"


#文件操作
open(data,"D:\other\docker学习笔记");# or die "文件无法打开,$!";
while (<data>){
  print "$_";
}
=cut

#读取


#sysopen(data,"1.txt",O_RDWR);


#copy
#open(data,"<1.txt");
=pod
open(data2,"<2.txt");
#@test=<data>;
while(<data2>){

print  $_;

}
=cut
#close(data);
#$test=<STDIN>;

=======
>>>>>>> perl
