-- any module in elm must start with this module declaration
module Hello exposing (..)
import Html exposing (text, button, input)

main = text "Hello" 





-- FUNCTIONS

-- named function. first line = signature, then = implementation
addTen : Int -> Int
addTen x =
  x + 10

-- note how whitespace is used to denote function application
-- function application associate to the LEFT hence no () needed


sum : Int -> Int -> Int
sum x y =
  x + y


-- note how it's based on partial application / curryin. In Elm all functions take exactly one argument (arity =1) and return a result which can be another function. e.g. sum x y is evaluated as ((sum x) y). sum x returns the intermediary function function(y) {return 5 + y} if x was 5.
-- one can also do sum2 = sum 2 (partial application)
-- sum 2 3 // will return (5)

-- anonymous function
-- \x -> x + 1

-- Nesting functions
-- add10(sum 1 (sum 2 3))

-- More readable way to write => use PIPE operator:

-- 3
--   |> sum 2
--   |> sum 1
--   |> addTen


-- Partial application is incredibly useful in Elm for making your code more readable and passing state between functions in your application.






-- TYPE VARIABLES

-- indexOf : String -> List String -> Int
-- indexOf string myList = ...
-- wouldnt work with anything but int
-- better are type variables

indexOf : a -> List a -> Int
indexOf myA myList = 42

-- several type variables: this function takes a tuple and returns another one
switch : (a, b) -> (b, a)
switch (a, b) = 
  (b, a)

