module Commands exposing (..)
import Html exposing (div, Html, text)

-- Commands are how to tell the runtime to execute things that involve side effects. Example: make a HTTP request, save something tolocal storage (i/o), generate a ramdom number.

-- Why?
-- Elm is a functional language. So, every function must return a value, and function side effects are forbidden. So in order to model side effects: the function will return the name of the desired command.
-- The main recipient of this command value is Html.Program - and then, the update method of Html.program who contains the logic to execute the command (but who deals with the dirty side effect work?).


-- model
type alias Model = 
  Int

init : (Model, Cmd Msg)
init = 
  (1, Cmd.none)


-- view


-- update



-- msg
-- a msg is sthg that happens in our app, that we want to react to.
-- onResult is how we "listen" to the random number being generated - we can't use a subscription here since subscriptions are for user/external inputs!
type Msg = 
  Roll
  | OnResult Int



-- subscriptions
subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none

-- main
main = text "hi"


-- note how subscriptions and DOM Html msg stuff do the same thing.
-- note how update and init have a similar role (init is just an update without input value)