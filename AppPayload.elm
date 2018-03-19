module AppPayload exposing (..)
import Html exposing (div, program, text)

main = text "hi"

-- model
type alias Model = 
  Int

-- init
init : (Int, Cmd Msg)
init =
  (0, Cmd.none)

-- message
type Msg = Increment Int | Decrement Int

-- view

-- update

-- subscriptions
subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none
