module UnitType exposing (..)
import Html exposing (Html, text)

main = text "hi"


-- Type alias w union type
-- seehow a is (type variable) is easily hooked in
type alias Message a =
  {
    id: Int,
    body: a
  }

-- readMessage: Message String -> String
-- readMessage : Message (List Int) -> String


-- expects an EMPTY value (not the same as any value)
-- readMessage : Message ()


-- () is called the unit type
