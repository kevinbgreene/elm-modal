module Update exposing (update)


import Models exposing (Model, RequestedAction(..))
import Messages exposing (Msg(..))
import Tacos.Update as Tacos
import DestroyWorld.Update as DestroyWorld
import DestroyCountry.Update as DestroyCountry


update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  let
    y = Debug.log "Msg: " (toString msg)

  in
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
            , requestedAction =
              if newTacos.isOrdering then
                Just OrderTacos
              else
                Nothing
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
            , requestedAction =
              if newDestroyCountry.isConfirming then
                Just ChooseCountryToBomb
              else
                Nothing
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
            , requestedAction =
              if newDestroyWorld.isConfirming then
                Just ConfirmDestroyWorld
              else
                Nothing
            }

        in
          (newModel, Cmd.none)