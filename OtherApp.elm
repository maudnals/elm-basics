module OtherApp exposing (..)
import Html exposing (div, Html, program, text)






-- MODEL

type alias Model = 
  String

init: ( Model, Cmd Msg )
init = 
  ( "initialModel", Cmd.none )





-- VIEW

-- a var of type Html is a virtual node
view : Model -> Html Msg
view myModel =
  div []
    [ text myModel ]






-- UPDATE

update: Msg -> Model-> ( Model, Cmd Msg )
update myMsg myModel =
  case myMsg of
      Nothing -> ( myModel, Cmd.none )






-- SUBSCRIPTIONS

subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none






-- MESSAGES

type Msg = 
  Nothing






-- MAIN
main : Program Never Model Msg
main = 
  program {
    init = init,
    view = view,
    update = update,
    subscriptions = subscriptions
  }