module DestroyWorld.Update exposing (update)


import DestroyWorld.Models exposing (Model)
import DestroyWorld.Messages exposing (Msg(..))


update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    NoOp ->
      (model, Cmd.none)

    RequestWorldDestruction ->
      let
        newModel =
          { model | isConfirming = True }

      in
        (newModel, Cmd.none)

    ConfirmWorldDestruction ->
      let
        newModel =
          { model | isWorldDestroyed = True, isConfirming = False }

      in
        (newModel, Cmd.none)

    AbortWorldDestruction ->
      let
        newModel =
          { model | isConfirming = False }

      in
        (newModel, Cmd.none)

