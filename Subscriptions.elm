module Subscriptions exposing (..)
import Html exposing (Html, div, text, program)
import Mouse
import Keyboard

-- Subscriptions are how the app can listen to external input or events
-- e.g. keyboard and mouse, browser location change, WEBSOCKET EVENT




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
subscriptions : Model -> Sub Msg
subscriptions model =
-- sub.batch takes a list of subscriptions and returns one that includes them all. We want to listen to clicks and downs,so we use batch.
    Sub.batch [
      Mouse.clicks MouseMsg, 
      Keyboard.downs KeyMsg
    ]
-- Subscriptions could be dynamic - they could change during the lifecycle of the app, depending on what's in the model. that's why we pass in the model as argument.
-- These subscriptions will produce Msg values that get fed right back into our `update` function.
-- Mouse.clicks takes a MESSAGE CONSTRUCTOR and returns a subscription. message constructor: takes a position and returns a msg.
-- tagging means wrapping in a msg
-- clicks : (Position -> msg) -> Sub msg
-- clicks tagger =
--   subscription (MySub "click" tagger)


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
