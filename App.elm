module App exposing (..)
import Html exposing (Html, div, program, text)

main = text "hi"


-- MODEL


type alias Model = 
  String

-- no arrow for signature just means no input value (only a return value)
-- and the () are for a tuple
init : ( Model, Cmd Msg )
init =
  ( "initialModel", Cmd.none )






-- MESSAGES


-- a message is something that happens in our app, that our app responds to
type Msg = 
  NoOp

-- here not so interesting cause no interactions => no Msgs. Other example
-- type Msg = Collapse | Expand






-- VIEW

-- Msg is a union type here used as type variable
view : Model -> Html Msg
view myModel =
  div []
    []






-- UPDATE

update: Msg -> Model -> ( Model, Cmd Msg)
update msg model =
  case msg of
      NoOp -> ( model, Cmd.none)





-- SUBSCRIPTIONS




-- MAIN