module DestroyCountry.Models exposing (..)


type alias Modal =
  { currentTarget : String
  }


type alias Model =
  { countriesDestroyed : List String
  , modal : Maybe Modal
  }


model : Model
model =
  { countriesDestroyed = []
  , modal = Nothing
  }


modal : Modal
modal =
  { currentTarget = ""
  }