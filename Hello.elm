module Hello exposing (..)
import Html exposing (text, button, input)

main = text "Hello" 

addOne : Int -> Int
addOne x =
  x + 1

sum : Int -> Int -> Int
sum x y =
  x + y