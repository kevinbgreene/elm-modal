module Models exposing (Model, model)


type alias Model =
  { isConfirmationRequested : Bool
  , isWorldDestroyed : Bool
  }


model : Model
model =
  { isConfirmationRequested = False
  , isWorldDestroyed = False
  }