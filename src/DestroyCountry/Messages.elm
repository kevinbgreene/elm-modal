module DestroyCountry.Messages exposing (..)


type Msg
  = NoOp
  | ChooseCountry
  | UpdateTarget String
  | ConfirmCountry
  | AbortBombing