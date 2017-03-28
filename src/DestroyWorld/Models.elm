module DestroyWorld.Models exposing (..)


type alias Modal =
  { isConfirmed : Bool
  }


type alias Model =
  { isWorldDestroyed : Bool
  , modal : Maybe Modal
  }


model : Model
model =
  { isWorldDestroyed = False
  , modal = Nothing
  }


modal : Modal
modal =
  { isConfirmed = False
  }