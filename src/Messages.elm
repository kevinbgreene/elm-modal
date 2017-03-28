module Messages exposing (..)


import Tacos.Messages as Tacos
import DestroyWorld.Messages as DestroyWorld
import DestroyCountry.Messages as DestroyCountry


type Msg
  = NoOp
  | ResetModalFocus
  | UpdateTacos Tacos.Msg
  | UpdateDestroyCountry DestroyCountry.Msg
  | UpdateDestroyWorld DestroyWorld.Msg