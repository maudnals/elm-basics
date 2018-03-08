module TypeVariables exposing (..)
import Html exposing (Html, text)

main = text "hi there"

-- TYPE VARIABLES

-- indexOf : String -> List String -> Int
-- indexOf string myList = ...
-- wouldnt work with anything but int
-- better are type variables

indexOf : a -> List a -> Int
indexOf myA myList = 42

-- several type variables: this function takes a TUPLE and returns another one
switch : (a, b) -> (b, a)
switch (a, b) = 
  (b, a)