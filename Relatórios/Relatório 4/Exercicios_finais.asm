.text
  li $t0, 2  # a
  li $t1, 4  # b
  li $t2, 1  # c

  # Questão 1 -> a==b
  bne $t0, $t1, ELSE1
    add $t2, $t0, $t1
    sub $t0, $t1, $t2
    j FIM1
  ELSE1:
    add $t1, $t0, $t2
    sub $t2, $t1, $t2
  FIM1:
  
  # Questão -> a!=b
  
  beq $t0, $t1, ELSE2
    add $t2, $t0, $t1
    sub $t0, $t1, $t2
    j FIM2
  ELSE2:
    add $t1, $t0, $t2
    sub $t2, $t1, $t2
  FIM2:
  
  # Questão 3 -> a>b
  blt $t0, $t1, ELSE3
    add $t2, $t0, $t1
    sub $t0, $t1, $t2
    j FIM3
  ELSE3:
    add $t1, $t0, $t2
    	sub $t2, $t1, $t2
  FIM3:
  
  # Questão 4 -> a<b
  bgt $t0, $t1, ELSE4
    add $t2, $t0, $t1
    sub $t0, $t1, $t2
    j FIM4
  ELSE4:
    add $t1, $t0, $t2
    sub $t2, $t1, $t2
  FIM4:
  
  # Questão 5
  li $t3, 10
  li $t4, 0
  
  WHILE:
    beqz $t3, FIM5
    addi $t4, $t4, 5
    subi $t3, $t3, 2
    j WHILE
  FIM5:
  
  