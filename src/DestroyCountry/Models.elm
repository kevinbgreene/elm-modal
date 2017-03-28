module DestroyCountry.Models exposing (Model, model)


type alias Model =
  { currentTarget : String
  , countriesDestroyed : List String
  , isConfirming : Bool
  }


model : Model
model =
  { currentTarget = ""
  , countriesDestroyed = []
  , isConfirming = False
  }