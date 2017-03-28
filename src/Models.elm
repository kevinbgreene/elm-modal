module Models exposing (..)


import Tacos.Models as Tacos
import DestroyWorld.Models as DestroyWorld
import DestroyCountry.Models as DestroyCountry


type RequestedAction
  = OrderTacos
  | ConfirmDestroyWorld
  | ChooseCountryToBomb


type alias Model =
  { isWorldDestroyed : Bool
  , tacos : Tacos.Model
  , destroyWorld : DestroyWorld.Model
  , destroyCountry : DestroyCountry.Model
  , requestedAction : Maybe RequestedAction
  }


model : Model
model =
  { isWorldDestroyed = False
  , tacos = Tacos.model
  , destroyWorld = DestroyWorld.model
  , destroyCountry = DestroyCountry.model
  , requestedAction = Nothing
  }