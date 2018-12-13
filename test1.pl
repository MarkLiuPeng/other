
#@array[0]="a";
#@array[2]="c";
#print "$array[0]";


#@test=(1,2,3);            #序列号数组
#print "@test";
#$test[100]=2;
                        #数组大小
#$size=@test;
#$max_index=$#test;
#print "$size $max_index";

#push(@test,4); #结尾添加元素
#print "@test"

#unshift(@test,0);   #开头添加元素
#print "@test";

#pop(@test);     #结尾删除
#print(@test)

#shift(@test);
#print(@test);


#@test=qw/balk red write listen/;
#print "@test";
#@test_tow=@test[0,2];       #切割数组
#print "@test_tow\n";
#@test_one=@test[0..3];
#print "@test_one"


@array=(1..10)[1..5];       #读取特定的元素
print "@array\n";

#splice(@array,3,5,20..25);      #数组元素替换函数(old_array,start_index,length,range)
splice(@array,1,4);     #不加替换目标,作用删除
print   "@array\n";

$tel="187-1569-3052";
@array_tow=split("-",$tel);     #字符串转数组函数(split_str_name,var_name)
print  "@array_tow[1]\n";

$str=join("-",@array_tow);      #将数组转换字符串("split_Str_name",array_name)
print   "$str\n";

@test=("python","javascript","shell","c",("html","perl","java"));  #排序函数(array_name)
@test_one=sort(@test);
@test_total=(@test,@test_one);      #合并数组
print "@test_one\n";


$[=1;           #特殊变量，索引起始设置
print "$test[1]\n";


print "@test_total\n";


#声明一个列表

$list=("a","b","c","d")[3];       #读取第三个元素
print "$list\n";
