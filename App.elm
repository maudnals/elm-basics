module App exposing (..)
import Html exposing (Html, div, program, text)

main = text "hi"


-- MODEL

type alias Model = 
  String

-- no arrow for signature just means no input value (only a return value)
-- and the () are for a tuple
init : (Model, Cmd Message)
init =
  ("initialModel", Cmd.none)


-- MESSAGES
-- a message is something that happens in our app, that our app responds to
type Message = 
  NoOp

-- here not so interesting cause no interactions => no messages. Other example
-- type Message = Collapse | Expand





-- VIEW

-- Message is a union type here used as type variable
view : Model -> Html Message
view myModel =
  div []
    []



-- UPDATE



-- SUBSCRIPTIONS




-- MAIN