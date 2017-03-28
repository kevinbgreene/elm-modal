module DestroyWorld.Models exposing (Model, model)


type alias Model =
  { isConfirming : Bool
  , isWorldDestroyed : Bool
  }


model : Model
model =
  { isConfirming = False
  , isWorldDestroyed = False
  }