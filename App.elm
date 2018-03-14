module App exposing (..)
import Html exposing (Html, div, program, text)


-- MODEL

-- model is data
type alias Model = 
  Bool

-- no arrow for signature just means no input value (only a return value)
-- and the () are for a tuple

-- init returns an initial model and a command
init : ( Model, Cmd Msg )
init =
  ( False, Cmd.none )






-- MESSAGES

-- a message is something that happens in my app and that my app responds to.

type Msg = 
  Collapse | Expand




-- VIEW

-- the function view renders an Html element using the app model as an input.
-- A var of type Html is a virtual node
-- Msg is a union type here used as type variable
view : Model -> Html Msg
view myModel =
  div []
    []






-- UPDATE

-- the `update` function is called by `program` each time a message is received - `update` responds to messages by updating the model (and returning commands as needed)
update: Msg -> Model -> ( Model, Cmd Msg)
update msg model =
  case msg of
      NoOp -> ( model, Cmd.none)





-- SUBSCRIPTIONS

-- we use subscriptions to listen to external imput in our app (e.g. user input, browser location changes, etc.)
subscriptions : Model -> Sub Msg
subscriptions model =
    -- use Sub.none if no interest in user input
    Sub.none




-- MAIN

main : Program Never Model Msg
main = 
  program 
    {
      init = init,
      view = view,
      update = update,
      subscriptions = subscriptions 
    }