{- 
    CS 360 Homework 3
        Write an implementation for each function below that meets the requirements
        in each comment.  Do not change the names or, when given, the types shown.

        The goal is to write the computation that answers the question, or that implements
        the requested function.  Each is given a starting value of an error so that this
        file will compile.  Simply delete the error and proceed.

    Your Name: _____________
-}

-- Question 1: What is two plus two?  Answer provided for you to show how this works.
p1 = 2 + 2

-- Question 2: What is 2 to the 1000 power, as an integer type?
p2 = error "Not implemented yet"

-- Question 3: What character comes before the letter %?  (Write the code that starts with n and answers this question; don't just look it up and write that)
p3 = error "Not implemented yet"

-- Question 4: What is the sum of all the natural numbers between 1 and 100 (inclusive)?
p4 = error "Not implemented yet"

-- Question 5: What is the sum of all the natural numbers between 1 and 100 (inclusive) that are divisible by 3? Use a list comprehension.
p5 = error "Not implemented yet"

-- Question 6: Write a function that tells you, True or False, if a natural number ends with the digit 9.  Use only mathematical operations.
p6 x = error "Not implemented yet"

-- Question 7: Write a function that tells you, True or False, if a natural number ends with the digit 9.  Use in your answer the show function to do this with a string, not with math as in the last problem.
p7 x = error "Not implemented yet"

-- Question 8: Are there any natural numbers between n and m, where n and m are any natural numbers that when squared, end in the number 9?  Use either of the previous two functions in your answer
p8 n m = error "Not implemented yet"

-- Question 9: Write a function that uses the filter function to count the number of negative numbers in a list. e.g. p9 [5,-4,6,-14] -> 2
p9 xs = error "Not implemented yet"

-- Question 10: Use list operations like head, tail, etc. in your answer to find the smallest item in the middle of a list, where the middle is defined to be everything except the first and last item in the list.  So p10 [5,3,8,1,0] -> 1
p10 = error "Not implemented yet"

-- Question 11: Use zip, list ranges and concatenation to create a list of hexadecimal mappings like this: 
-- [(0,'0'),(1,'1'),(2,'2'),(3,'3'),(4,'4'),(5,'5'),(6,'6'),(7,'7'),(8,'8'),(9,'9'),(10,'A'),(11,'B'),(12,'C'),(13,'D'),(14,'E'),(15,'F')]
p11 = error "Not implemented yet"

-- Question 12: Use filter and a lambda function to write a function that takes a string and removes all spaces, commas and periods. e.g. p12 "This is a string. This, also, is a number." -> "ThisisastringThisalsoisanumber"
p12 :: [Char] -> [Char]
p12 = error "Not implemented yet"

-- Question 13: Implement this function that extracts all Twitter handles from a string.  e.g. given "Hey @elonmusk what is @neuralink doing nowadays?" returns ["@elonmusk","@neuralink"]   You can assume the handles are delimited by spaces on both sides, i.e. they're not mashed into other words.
p13 :: [Char] -> [[Char]]
p13 = error "Not implemented yet"

-- Question 14: Using pattern matching of parameters, implement this function that converts characters to their URL safe encoding values
-- ' ' -> "%20"
-- '!' -> "%21"
-- '#' -> "%23"
-- '%' -> "%25"
urlSafe :: Char -> [Char]
urlSafe = error "Not implemented yet"

-- Question 15: Using pattern matching with tuples, implement this function that rotates a vector through 90 degrees clockwise
-- https://limnu.com/sketch-easy-90-degree-rotate-vectors/
rotate90 :: (Double,Double) -> (Double,Double)
rotate90 = error "Not implemented yet"

-- Question 16: Using pattern matching with lists, implement this function that swaps the order of the first two or three letters of a word:
-- ""   -> ""  no letters, do nothing
-- "a"  -> "a" one letter, leave it as it is
-- "ab" -> "ba" two letters, swap them
-- "abcdef" -> "cbadef" three or more letters, swap the first and third letter
mangleWord :: [Char] -> [Char]
mangleWord = error "Not implemented yet"

-- Question 17: Use your answer from the previous question and the map function to mangle all the words in a sentence
-- mangleSentence "This is a weird sentence" -> "ihTs si a iewrd nestence"
mangleSentence :: [Char] -> [Char]
mangleSentence = error "Not implemented yet"

-- Question 18: Use guards in a function that produces "That's an even number", "That's an odd number", "That's zero, is it even or odd?" given
-- a number that is even, odd or zero
speakEvenOdd :: Int -> [Char]
speakEvenOdd = error "Not implemented yet"

-- Question 19: Write a function that uses explicit recursion to create a list of the first n values of the sequence: [x,x^2,x^3,x^4,...]
-- p19 4 2 -> [2,4,8,16]
-- p19 10 10 -> [10,100,1000,10000,100000,1000000,10000000,100000000,1000000000,10000000000]
-- i.e. using a list comprehension this can be done as
p19lc n x = [x^i | i <- [1..n]]
-- this question is asking you to rewrite this using recursion
p19 n x = error "Not implemented yet"

-- Question 20: Using the function digitToChar, implement the function below using explicit recursion that turns a list of digits into a string
digitToChar :: Int -> Char
digitToChar d
    | d < 0     = error "number must have only a single positive digit"
    | d > 9     = error "number must have only a single digit"
    | otherwise = head (show d)

-- e.g. 
-- [5,2,7,9,3] -> "52793"
-- [4] -> "4"
-- [] -> ""
numberListToStringRecursive :: [Int] -> [Char]
numberListToStringRecursive = error "Not implemented yet"

-- Question 21: Repeat the previous question, but instead of using explicit recursion use a right fold
numberListToStringRFold :: [Int] -> [Char]
numberListToStringRFold = error "Not implemented yet"

-- Question 22: Repeat the previous question, but instead of using explicit recursion use a left fold
numberListToStringLFold :: [Int] -> [Char]
numberListToStringLFold = error "Not implemented yet"