-- any module in elm must start with this module declaration
module Hello exposing (..)
import Html exposing (text, button, input)

main = text "Hello" 

-- named function. first line = signature, then = implementation
addOne : Int -> Int
addOne x =
  x + 1

-- note how whitespace is used to denote function application
-- and how it's based on partial application / currying (in Elm all functions take exactly one argument (arity =1) and return a result. This result can be another function.)
-- function application associate to the LEFT hence no () needed

sum : Int -> Int -> Int
sum x y =
  x + y

-- anonymous function
-- \x -> x + 1