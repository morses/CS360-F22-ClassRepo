import Data.Char

-- Recursion
length' []  = 0
length' [x] = 1
length' (x:xs) = 1 + length' xs

maximum' []     = error "must have some elements"
maximum' [x]    = x
maximum' (x:xs) = max x (maximum' xs)

--"hEllO" -> 1
countUpper []     = error "must ahve some elements"
countUpper [x]    = if isUpper x then 1 else 0
countUpper (x:xs) = if isUpper x then 1 + countUpper xs else 0 + countUpper xs

-- Higher order functions


