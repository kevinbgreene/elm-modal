module Tacos.Models exposing (Model, model)


type alias Model =
  { currentOrder : Int
  , totalOrdered : Int
  , isOrdering : Bool
  }


model : Model
model =
  { currentOrder = 0
  , totalOrdered = 0
  , isOrdering = False
  }