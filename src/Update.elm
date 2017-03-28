module Update exposing (update)


import Models exposing (Model, Modal(..))
import Messages exposing (Msg(..))
import Tacos.Update as Tacos
import DestroyWorld.Update as DestroyWorld
import DestroyCountry.Update as DestroyCountry


update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    NoOp ->
      (model, Cmd.none)

    UpdateTacos msg ->
      let
        (newTacos, _) =
          Tacos.update msg model.tacos

        newModel =
          { model
          | tacos = newTacos
          , modal = Maybe.map TacoModal newTacos.modal
          }

      in
        (newModel, Cmd.none)

    UpdateDestroyCountry msg ->
      let
        (newDestroyCountry, _) =
          DestroyCountry.update msg model.destroyCountry

        newModel =
          { model
          | destroyCountry = newDestroyCountry
          , modal = Maybe.map CountryModal newDestroyCountry.modal
          }

      in
        (newModel, Cmd.none)

    UpdateDestroyWorld msg ->
      let
        (newDestroyWorld, _) =
          DestroyWorld.update msg model.destroyWorld

        newModel =
          { model
          | destroyWorld = newDestroyWorld
          , isWorldDestroyed = newDestroyWorld.isWorldDestroyed
          , modal = Maybe.map WorldModal newDestroyWorld.modal
          }

      in
        (newModel, Cmd.none)