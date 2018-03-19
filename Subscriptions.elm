module Subscriptions exposing (..)
import Html exposing (div, text, program)

-- subscriptions = how the app can listen to external input
-- e.g. keyboard and mouse, browser location change, websocket events


-- model
-- view
-- update
-- msg
-- subscriptions
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


