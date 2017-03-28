module Models exposing (..)


import Tacos.Models as Tacos
import DestroyWorld.Models as DestroyWorld
import DestroyCountry.Models as DestroyCountry


type Modal
  = TacoModal Tacos.Modal
  | WorldModal DestroyWorld.Modal
  | CountryModal DestroyCountry.Modal


type alias Model =
  { isWorldDestroyed : Bool
  , tacos : Tacos.Model
  , destroyWorld : DestroyWorld.Model
  , destroyCountry : DestroyCountry.Model
  , modal : Maybe Modal
  }


model : Model
model =
  { isWorldDestroyed = False
  , tacos = Tacos.model
  , destroyWorld = DestroyWorld.model
  , destroyCountry = DestroyCountry.model
  , modal = Nothing
  }