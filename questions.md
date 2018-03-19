

#1 

type alias Model = String
init : (Model, Cmd Msg)
init =
  ("yes", Cmd.none)

How is Cmd.none a Cmd Msg?