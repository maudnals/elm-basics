module Subscriptions exposing (..)
import Html exposing (Html, div, text, program)
import Mouse
import Keyboard

-- subscriptions = how the app can listen to external input
-- e.g. keyboard and mouse, browser location change, websocket events




-- model

type alias Model = 
  Int

init : (Model, Cmd Msg)
init =
  (0, Cmd.none)





-- msg

-- type Msg = Increment Int NO. Remember: a message is something that happens in our app, that we want our app to react to. So, in that case, obviously these are the user input events.
type Msg = MouseMsg Mouse.Position 
          | KeyMsg Keyboard.KeyCode
-- Mouse.Position and Keyboard.KeyCode are payloads for this union type.





-- view

view : Model -> Html Msg
view model =
  div []
    [text (toString model)]






-- update

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
      MouseMsg position ->
        (model + 1, Cmd.none)
      KeyMsg keyCode ->
        (model + 2, Cmd.none)




-- subscriptions
subscriptions : 






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


