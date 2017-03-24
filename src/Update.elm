module Update exposing (update)


import Models exposing (Model, model)
import Messages exposing (Msg)


update : Msg -> Model -> (Model, Cmd Msg)
update msg state =
  (model, Cmd.none)