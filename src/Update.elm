module Update exposing (update)


import Models exposing (Model, Modal(..))
import Messages exposing (Msg(..))
import Ports as Ports
import Tacos.Update as Tacos
import DestroyWorld.Update as DestroyWorld
import DestroyCountry.Update as DestroyCountry


isJust : Maybe a -> Bool
isJust maybe =
  case maybe of
    Just x ->
      True

    _ ->
      False


focusCmd : Maybe a -> Maybe a -> Cmd Msg
focusCmd old new =
  case ((isJust old), (isJust new)) of
    (False, True) ->
      Ports.focusModal()

    _ ->
      Cmd.none


update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    NoOp ->
      (model, Cmd.none)

    ResetModalFocus ->
      (model, (Ports.focusModal ()))

    UpdateTacos msg ->
      let
        (newTacos, _) =
          Tacos.update msg model.tacos

        newModel =
          { model
          | tacos = newTacos
          , modal = Maybe.map TacoModal newTacos.modal
          }

        newCommand =
          focusCmd model.modal newModel.modal

      in
        (newModel, newCommand)

    UpdateDestroyCountry msg ->
      let
        (newDestroyCountry, _) =
          DestroyCountry.update msg model.destroyCountry

        newModel =
          { model
          | destroyCountry = newDestroyCountry
          , modal = Maybe.map CountryModal newDestroyCountry.modal
          }

        newCommand =
          focusCmd model.modal newModel.modal

      in
        (newModel, newCommand)

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

        newCommand =
          focusCmd model.modal newModel.modal

      in
        (newModel, newCommand)