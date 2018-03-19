module AppPayload exposing (..)
import Html exposing (button, div, Html, program, text)
import Html.Events exposing (onClick)


-- model
type alias Model = 
  Int


-- init
init : (Int, Cmd Msg)
init =
  (0, Cmd.none)


-- message
type Msg = Increment Int

-- view
view : Model -> Html Msg
view model =
  div []
    [ button [ onClick (Increment 2)] [text "+"]]

-- update
update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
      Increment howMuch->
          (model + howMuch, Cmd.none)


-- subscriptions
subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


-- main
main : Program Never Model Msg
main = 
  program 
    {
      init = init,
      view = view,
      update = update,
      subscriptions = subscriptions 
    }