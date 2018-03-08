module TypeAlias exposing (..)
import Html exposing (Html, text)

main = text "hi"

-- imprecise
label : Int -> String
label id = 
  "playerName"

-- better: with aliases

type alias PlayerId = Int
type alias PlayerName = String
getName : PlayerId -> PlayerName
getName id =
  "name"

