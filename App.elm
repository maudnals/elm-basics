module App exposing (..)
import Html exposing (Html, div, program, text)

main = text "hi"


-- MODEL

-- model is data
type alias Model = 
  String

-- no arrow for signature just means no input value (only a return value)
-- and the () are for a tuple
init : ( Model, Cmd Msg )
init =
  ( "initialModel", Cmd.none )






-- MESSAGES

-- a message is something that happens in my app and that my app responds to. For example: expand/collapse.

type Msg = 
  NoOp

-- here not so interesting cause no interactions => no Msgs. Other example
-- type Msg = Collapse | Expand






-- VIEW

-- the function view renders an Html element using the app model as an input

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




-- MAIN