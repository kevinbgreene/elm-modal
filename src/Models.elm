module Models exposing (Model, model)


type alias Model =
  { msg : String
  , isModalOpen : Bool
  }


model : Model
model =
  { msg = "Hello World"
  , isModalOpen = False
  }