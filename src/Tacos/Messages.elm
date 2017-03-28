module Tacos.Messages exposing (..)


type Msg
  = NoOp
  | StartTacoOrder
  | UpdateOrderCount Int
  | PlaceOrder
  | CancelOrder