import Data.Char

-- List comprehensions

-- Infinite list of even numbers starting with 0
p1 = [x | x <- [0..], x `rem` 2 == 0]
p2 = [x | x <- [0..], even x]

-- Remove all upper case characters from a string
--"THis is A stRing" -> "is is  sting"
p3 s = [x | x <- s, not (isUpper x) ]
p4 s = [x | x <- s, isLower x ]
p5 s = [x | x <- s, x `elem` ' ':['a'..'z']]
-- Flip case
flipCase x = if isUpper x then toLower x else toUpper x
p6 s = [if isUpper x then toLower x else toUpper x | x <- s ]
p7 s = [flipCase x | x <- s]

-- Pattern matching of parameters in functions
not' :: Bool -> Bool
not' True  = False
not' False = True

fib :: (Integral a) => a -> a
fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

-- tuples
dot (x1,y1,z1) (x2,y2,z2) = x1*x2 + y1*y2 + z1*z2

-- lists
--  "hello" -> "Hello"
capWord s =  toUpper (head s) : tail s

capWord' [] = []
capWord' (x:[]) = toUpper x : []
capWord' (x:y:[]) = toUpper x : y : []
capWord' (x:xs) = toUpper x : xs

-- "Hello" -> ("H",5)
firstPlusLength [] = error "Can't work for an empty list"
firstPlusLength [x] = (x,1)
firstPlusLength all@(x:xs) = (x,length all)
