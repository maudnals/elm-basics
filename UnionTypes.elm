module UnionTypes exposing (..)
import Html exposing (Html, text)

main: Html msg
main = text (getState pendingState)

type State = Pending | Done | Failed
-- State is the TYPE
-- Pending, Done and Failed are CONSTRUCTORS (functions)
-- Union type is also called algebraic data type

-- OtherAnswer String is to give a ****PAYLOAD**** to the function
-- type Answer = Yes | No | OtherAnswer String

pendingState : State
pendingState = Pending

ok : Answer
ok = Yes 

getState : State -> String
getState state =
  case state of 
  Pending -> "pending"
  Done -> "done"
  Failed -> "failed"


type Cake = Lemon | Chocolate

lemonCake : Cake
lemonCake = Lemon

chocolateCake : Cake
chocolateCake = Chocolate

eatACake : Cake -> String
eatACake cake =
  case cake of
  Lemon -> "boarf"
  Chocolate -> "delicious!"





-- NESTING

type Answer = Yes | No | OtherAnswer

type OtherAnswer = Undecided | GetLost | Other String


answerSomething : Answer -> String
answerSomething answer =
  "i'm answering now"

-- answerFree : String -> Answer
-- answerFree answerContent =
--   Other(answerContent)



-- FAMOUS UNION TYPES

type Bool = True | False

-- with type variable
-- maybe = either nothing or something (avoid existence checks)
type Maybe a = Nothing | Just a 


type Result a b = 
  OK a | Error b





-- WITH TYPE VARIABLES

type Response a = Confirmation a | Rejection a




-- TYPICAL USE
-- passing around a value that can be one of a known set of possible values. E.g. in a typical web app: we can trigger MESSAGES in order to perform ACTIONS, eg load user (by id), create user, ... and some of these messages would have a payload like the user id or the user object.
--> think redux

type Msg userId = 
  LoadUsers
  | AddUser
  | EditUser userId