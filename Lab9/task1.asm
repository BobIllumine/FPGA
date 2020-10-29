.data
m1:  .float 5.4
m2:  .float 12.3
m3: .float 18.23
m4: .float 8.23

.text
li $v0, 6
syscall 
mov.s $f1,  $f0 # x will be stored in $f1
syscall # y will be stored in $f0
mul.s $f2 , $f0, $f1
l.s $f3, m1
mul.s $f2 , $f2, $f3 #5.4xy stored in $f2

l.s $f3, m2
mul.s $f4 , $f0, $f3 #12.3y stored in $f4

sub.s $f2, $f2, $f4

l.s $f3, m3
mul.s $f4 , $f1, $f3  #18.23x stored in $f4

add.s $f2, $f2, $f4

l.s $f3, m4
mov.s $f4,  $f3  #8.23y stored in $f4
 
sub.s $f2, $f2, $f4

li $v0, 2
mov.s $f12 , $f2
syscall # requires arg to be stored in $f12
