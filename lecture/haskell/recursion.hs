import Data.Char

-- Recursion
length' []  = 0
length' [x] = 1
length' (x:xs) = 1 + length' xs

maximum' []       = error "must have some elements"
maximum' [x]      = x
maximum' (x:y:[]) = max x      y               --if x > y then x else y
maximum' (x:xs)   = max x (maximum' xs)

--keepUpper "HellO WOrlD!" -> "HOWOD"
keepUpper :: [Char] -> [Char]
keepUpper []     = []
--keepUpper [x]    = if isUpper x then [x] else []
keepUpper (x:xs)
    | isUpper x  = x : keepUpper xs
    | isSymbol x = x : keepUpper xs
    | isSpace x  = x : keepUpper xs
    | otherwise  =     keepUpper xs

--"hEllO" -> 1
countUpper []     = error "must ahve some elements"
countUpper [x]    = if isUpper x then 1 else 0
countUpper (x:xs) = if isUpper x then 1 + countUpper xs else 0 + countUpper xs

countLower = count isLower
--countLower = (count . isLower)
--countLower
--countSpace
--countSymbol

--count :: (Char -> Bool) -> [Char] -> Integer
--count :: Char -> (Bool -> ([Char] -> Integer))
count fn []     = error "must have some elements in our string"
count fn [x]    = if fn x then 1 else 0
count fn (x:xs) = if fn x then 1 + theRest else 0 + theRest
                    where
                        theRest = count fn xs

-- Higher order functions

-- use zipWith
[5,2,8,3,4,7,9,10] [7,8,2,2,7,9,90]

{- 
Command history from class today
ghci> :m + Data.Char
ghci> :t isUpper
isUpper :: Char -> Bool
ghci> :l recursion
[1 of 1] Compiling Main             ( recursion.hs, interpreted )
Ok, one module loaded.
ghci> :b
The break command requires at least one argument.
ghci> :b recursion
Cannot set breakpoint on `recursion': `recursion' not in scope
ghci> :t length'
length' :: Num a1 => [a2] -> a1
ghci> :t max
max :: Ord a => a -> a -> a
ghci> :t maximum'
maximum' :: Ord a => [a] -> a
ghci> :t (+)
(+) :: Num a => a -> a -> a
ghci> :t isUpper
isUpper :: Char -> Bool
ghci> :t countUpper
countUpper :: Num a => [Char] -> a
ghci> :r
Ok, one module loaded.
ghci> :t countUpper
countUpper :: Num a => [Char] -> a
ghci> :R
unknown command ':R'
use :? for help.
ghci> :R
unknown command ':R'
use :? for help.
ghci> :r
[1 of 1] Compiling Main             ( recursion.hs, interpreted )

recursion.hs:19:24: error:
    * Couldn't match expected type `Bool' with actual type `Char'
    * In the expression: x
      In the expression:
        if x then 1 + countUpper xs else 0 + countUpper xs
      In an equation for `countUpper':
          countUpper (x : xs)
            = if x then 1 + countUpper xs else 0 + countUpper xs
   |
19 | countUpper (x:xs) = if x then 1 + countUpper xs else 0 + countUpper xs
   |                        ^
Failed, no modules loaded.
ghci>
ghci> :r
[1 of 1] Compiling Main             ( recursion.hs, interpreted )

recursion.hs:13:26: error: parse error on input `->'
   |
13 | keepUpper "HellO WOrlD!" -> "HOWOD"
   |                          ^^
Failed, no modules loaded.
ghci> :R
unknown command ':R'
use :? for help.
ghci> :r
[1 of 1] Compiling Main             ( recursion.hs, interpreted )
Ok, one module loaded.
ghci> :t keepUpper
keepUpper :: [Char] -> [Char]
ghci> keepUpper "HellO WOrlD!"
"HOWOD"
ghci> keepUpper ""            
""
ghci> keepUpper "@#$%^&*()_"
""
ghci> :r
[1 of 1] Compiling Main             ( recursion.hs, interpreted )
Ok, one module loaded.
ghci> keepUpper "@#$%^&*()_"
"$^"
ghci> keepUpper "@#$%^&*()_-"
"$^"
ghci> keepUpper "@#$%^&*()_-XX"
"$^XX"
ghci> keepUpper "HellO WOrlD!" 
"HO WOD"
ghci> keepUpper "HellO WOrlD! "
"HO WOD"
ghci> :r
[1 of 1] Compiling Main             ( recursion.hs, interpreted )
Ok, one module loaded.
ghci> keepUpper "HellO WOrlD! "
"HO WOD "
ghci> :count
unknown command ':count'
use :? for help.
ghci> :r
[1 of 1] Compiling Main             ( recursion.hs, interpreted )
Ok, one module loaded.
ghci> count isUpper "HellO World!"
3
ghci> :t isUpper
isUpper :: Char -> Bool
ghci> count isUpper "HellO World!"
3     
ghci> count isLower "HellO World!"
7
ghci> count isSpace "HellO World!"
1
ghci> count isSymbol "HellO World!"
0
ghci> count isNumber "HellO World!"
0
ghci> count isNumber "HellO W0rld!"
1
ghci> count isPunctuation "HellO W0rld!"
1
ghci> :r
[1 of 1] Compiling Main             ( recursion.hs, interpreted )
Ok, one module loaded.
ghci> countLower "Hello World!"
8
ghci> :t countUpper
countUpper :: Num a => [Char] -> a
ghci> :t countLower
countLower :: [Char] -> Integer
ghci> count (\x = x < 0) [-5..10]

<interactive>:51:11: error: parse error on input `='
ghci> count (\x -> x < 0) [-5..10]
5
ghci> let fn = (*)
ghci> fn 5 9
45
ghci> let fn = (5*)
ghci> fn 9
45
ghci> fn 5
25
ghci> map (*5) [1..10]
[5,10,15,20,25,30,35,40,45,50]
ghci> :r
[1 of 1] Compiling Main             ( recursion.hs, interpreted )
Ok, one module loaded.
ghci> :t count
count :: Num a => (t -> Bool) -> [t] -> a
ghci> let a = [5,2,8,3,4,7,9,10]
ghci> let b = [7,8,2,2,7,9,90]
ghci> zip a b
[(5,7),(2,8),(8,2),(3,2),(4,7),(7,9),(9,90)]
ghci> :t zipWith
zipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
ghci> :t zip
zip :: [a] -> [b] -> [(a, b)]
ghci> zipWith max a b
[7,8,8,3,7,9,90]
ghci>
ghci>
ghci> :map
unknown command ':map'
use :? for help.
ghci> :t map
map :: (a -> b) -> [a] -> [b]
ghci>
ghci> map (\x -> x) ([1..10]++[10,9..1])
[1,2,3,4,5,6,7,8,9,10,10,9,8,7,6,5,4,3,2,1]
ghci> map (\x -> if x > 8 then 8 else x) ([1..10]++[10,9..1])
[1,2,3,4,5,6,7,8,8,8,8,8,8,7,6,5,4,3,2,1]
ghci> show True
"True"
ghci> show 9
"9"
ghci> show 4.5
"4.5"
ghci> show [1,2,3]
"[1,2,3]"
ghci> show (\x -> 2*x)

<interactive>:78:1: error:
    * No instance for (Show (Integer -> Integer))
        arising from a use of `show'
        (maybe you haven't applied a function to enough arguments?)
    * In the expression: show (\ x -> 2 * x)
      In an equation for `it': it = show (\ x -> 2 * x)
ghci> [1..10]
[1,2,3,4,5,6,7,8,9,10]
ghci> map show [1..10]
["1","2","3","4","5","6","7","8","9","10"]
ghci> map (\x -> x < 5) [1..10]
[True,True,True,True,False,False,False,False,False,False]
ghci> map (\x -> even x) [1..10]   
[False,True,False,True,False,True,False,True,False,True]
ghci>
ghci>
ghci> :t filter
filter :: (a -> Bool) -> [a] -> [a]
ghci>
ghci> 
ghci> filter isUpper "Hello World!"
"HW"
ghci> filter (\x -> x == 'l') "Hello World!"
"lll"
ghci> filter (\x -> x `rem` 4 == 1) [1..100]
[1,5,9,13,17,21,25,29,33,37,41,45,49,53,57,61,65,69,73,77,81,85,89,93,97]
ghci>
ghci>
ghci> :t foldl
foldl :: Foldable t => (b -> a -> b) -> b -> t a -> b
ghci> :t foldr4

<interactive>:1:1: error:
    * Variable not in scope: foldr4
    * Perhaps you meant one of these:
        `foldr' (imported from Prelude), `foldr1' (imported from Prelude),
        `foldl' (imported from Prelude)
ghci> :t foldl 
foldl :: Foldable t => (b -> a -> b) -> b -> t a -> b
ghci> :t foldr
foldr :: Foldable t => (a -> b -> b) -> b -> t a -> b
ghci>
ghci> 
ghci> map show [1..10]
["1","2","3","4","5","6","7","8","9","10"]
ghci> any [True,False,True]

<interactive>:100:5: error:
    * Couldn't match expected type: a -> Bool
                  with actual type: [Bool]
    * In the first argument of `any', namely `[True, False, True]'
      In the expression: any [True, False, True]
      In an equation for `it': it = any [True, False, True]
    * Relevant bindings include
        it :: t a -> Bool (bound at <interactive>:100:1)
ghci> :t any               
any :: Foldable t => (a -> Bool) -> t a -> Bool
ghci> any (\x -> x) [True,False,True]
True
ghci> any (\x -> x) [True,False,False]
True
ghci> any (\x -> x) [False,False,False]
False
ghci> 
ghci> foldl (\acc x -> acc || x) False [False,True,False]
True
ghci> foldl (\acc x -> acc || x) False [False,True,True]
True
ghci> foldl (\acc x -> acc || x) False [False,False,False]
False
-}