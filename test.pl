#单行注释

#多行注释
=pod  shadow
print "hello world"


print "pe


rl"   #空白


#print 'perl\n'
print "perl\n"    #双引号和解释转义
                  #here文档
                  $var=<<"single_name
$x=10;
$var=<<"EXIT";
here document
x=$x
EXIT
print "$var\n";

#print "\*perl perl"   #转义

#数据类型
#$y=1        #数值
                  #标量
print "$x\n"

#@arry=(1,2,3) #数组
#%hash=("a"=>1,"b"=>2,"c"=>3)  #哈希

$x="str";    #字符
print("$x\a");


@lanuage=("python","shell","perl");
print "@lanuage[1]  $lanuage[2]";      #数组下标特定输出
#$ or @ 都可以

%tb=("name",'lp',"sex",'man',"age",18);
print "$tb{'name'}";    #哈希key,value

@test_one=("a","b","c");
@test_tow=@test_one; #copy array
$size=@test_one;     #len array
print("@test_tow\n $size");
print <<EOF;
<a href="www.xieke.com"><a/>
alert("welcome to xieke.com")
EOF
=cut
#特殊字符
print __FILE__."\n".__PACKAGE__."\n".__LINE__
