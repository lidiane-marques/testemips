li   $t0,0          #A
li   $t1,0           #B
li   $t2,0           #C

xori $t3,$t0,1       #A!
xori $t4,$t1,1       #B!
xori $t5,$t2,1       #C!

    # (A!.B!.C!)
    and $t6, $t3, $t4   
    and $t6, $t6, $t5   

    # (A!.B!.C)
    and $t7, $t3, $t4   
    and $t7, $t7, $t2   
    or $t6, $t6, $t7    

    # (A!.B.C!)
    and $t7, $t3, $t1  
    and $t7, $t7, $t5   
    or $t6, $t6, $t7    

    # (A!.B.B)
    and $t7, $t3, $t1 
    and $t7, $t7, $t2   
    or $t6, $t6, $t7