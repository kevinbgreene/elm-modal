module Tacos.Messages exposing (..)


type Msg
  = NoOp
  | StartTacoOrder
  | UpdateOrder Int
  | PlaceOrder
  | CancelOrder