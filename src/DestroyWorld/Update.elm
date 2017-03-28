module DestroyWorld.Update exposing (update)


import DestroyWorld.Models exposing (..)
import DestroyWorld.Messages exposing (Msg(..))


update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    NoOp ->
      (model, Cmd.none)

    RequestWorldDestruction ->
      let
        newModel =
          { model | modal = (Just modal) }

      in
        (newModel, Cmd.none)

    ConfirmWorldDestruction ->
      let
        newModel =
          { model | isWorldDestroyed = True, modal = Nothing }

      in
        (newModel, Cmd.none)

    AbortWorldDestruction ->
      let
        newModel =
          { model | modal = Nothing }

      in
        (newModel, Cmd.none)

