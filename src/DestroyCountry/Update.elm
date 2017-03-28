module DestroyCountry.Update exposing (update)


import DestroyCountry.Models exposing (..)
import DestroyCountry.Messages exposing (Msg(..))


update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    NoOp ->
      (model, Cmd.none)

    ChooseCountry ->
      let
        newModel =
          { model | modal = (Just modal) }

      in
        (newModel, Cmd.none)

    UpdateTarget target ->
      let
        newModal =
          Maybe.map (\x -> { x | currentTarget = target }) model.modal

        newModel =
          { model | modal = newModal }

      in
        (newModel, Cmd.none)

    ConfirmCountry ->
      let
        countriesDestroyed =
          case model.modal of
            Just modal ->
              modal.currentTarget :: model.countriesDestroyed

            _ -> model.countriesDestroyed

        newModel =
          { model
          | countriesDestroyed = countriesDestroyed
          , modal = Nothing
          }

      in
        (newModel, Cmd.none)

    AbortBombing ->
      let
        newModel =
          { model
          | modal = Nothing
          }

      in
        (newModel, Cmd.none)

