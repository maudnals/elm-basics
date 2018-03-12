module TypeAlias exposing (..)
import Html exposing (Html, text)

main = text "hi"




-- TYPE ALIASES (MUST BE CAPITALIZED)

-- imprecise
label : Int -> String
label id = 
  "playerName"

-- better: use an alias

type alias PlayerId = Int
type alias PlayerName = String
getName : PlayerId -> PlayerName
getName id =
  "name"





-- RECORDS

-- verbose
-- getNameOfPerson: {id: Int, name: String} -> String
-- getNameOfPerson a = "jack"

-- better: use a record
type alias Person = {id: Int, name: String}
getNameOfPerson : Person -> String
getNameOfPerson a = 
  "default"




-- TYPE ALIASES AS CONSTRUCTORS
-- we can create a record by using a type alias as constructor function

jack : Person
jack = Person 123 "jack"


