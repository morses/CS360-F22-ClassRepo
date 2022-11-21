
hello x = "Hello " ++ x

doubleMe x = x + x

squareMe x = x * x

doubleSmallNumber x = if x > 100  
                then x  
                else x*2

factorial x = product [1..x]