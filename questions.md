

#1
type alias Model = String
init : (Model, Cmd Msg)
init =
  ("yes", Cmd.none)

How is Cmd.none a Cmd Msg?


#2
How does elm reactor work?


#3
Who deals with the dirty side effect work? update function or Html.program?


#4
subscriptions signature: how does it work?