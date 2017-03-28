module Messages exposing (..)


import Tacos.Messages as Tacos
import DestroyWorld.Messages as DestroyWorld
import DestroyCountry.Messages as DestroyCountry


type Msg
  = NoOp
  | UpdateTacos Tacos.Msg
  | UpdateDestroyCountry DestroyCountry.Msg
  | UpdateDestroyWorld DestroyWorld.Msg