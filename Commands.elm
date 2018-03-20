module Commands exposing (..)
import Html exposing (div, Html, text)

-- Commands are how to tell the runtime to execute things that involve side effects. Example: make a HTTP request, save something tolocal storage (i/o), generate a ramdom number.

-- Why?
-- Elm is a functional language. So, every function must return a value, and function side effects are forbidden. So in order to model side effects: the function will return the name of the desired command.
-- The main recipient of this command value is Html.Program (who will deal with the dirty side effect work).

main = text "hi"