.data
  b: .float 32.0
  x: .float 5.0
  y: .float 9.0
  z: .float 0.0
.text

  addi $v0, $v0, 6
  syscall
  
  mov.s $f3, $f0
  
  l.s $f2 b
  l.s $f0 z
  
  add.s $f12 $f3 $f0
  sub.s $f1, $f3, $f2
  
  l.s $f2 x
  mul.s $f1, $f1, $f2
  
  l.s $f2 y   
  div.s $f1, $f1, $f2  
    
  add.s $f12, $f1, $f0
  addi $v0, $zero, 2
  syscall