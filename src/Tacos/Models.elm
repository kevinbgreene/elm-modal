module Tacos.Models exposing (..)


type alias Modal =
  { currentOrder : Int
  }


type alias Model =
  { totalOrdered : Int
  , modal : Maybe Modal
  }


model : Model
model =
  { totalOrdered = 0
  , modal = Nothing
  }


modal : Modal
modal =
  { currentOrder = 0
  }