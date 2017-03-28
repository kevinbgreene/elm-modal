module DestroyCountry.Update exposing (update)


import DestroyCountry.Models exposing (Model)
import DestroyCountry.Messages exposing (Msg(..))


update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    NoOp ->
      (model, Cmd.none)

    ChooseCountry ->
      let
        newModel =
          { model | isConfirming = True }

      in
        (newModel, Cmd.none)

    UpdateTarget target ->
      let
        newModel =
          { model | currentTarget = target }

      in
        (newModel, Cmd.none)

    ConfirmCountry ->
      let
        countriesDestroyed =
          model.currentTarget :: model.countriesDestroyed

        newModel =
          { model
          | currentTarget = ""
          , countriesDestroyed = countriesDestroyed
          , isConfirming = False
          }

      in
        (newModel, Cmd.none)

    AbortBombing ->
      let
        newModel =
          { model
          | currentTarget = ""
          , isConfirming = False
          }

      in
        (newModel, Cmd.none)

