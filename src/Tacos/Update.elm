module Tacos.Update exposing (update)


import Tacos.Models exposing (Model)
import Tacos.Messages exposing (Msg(..))


update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    NoOp ->
      (model, Cmd.none)

    StartTacoOrder ->
      let
        newModel =
          { model | isOrdering = True }

      in
        (newModel, Cmd.none)

    UpdateOrder orderCount ->
      let
        newModel =
          { model | currentOrder = orderCount }

      in
        (newModel, Cmd.none)

    PlaceOrder ->
      let
        orderTotal =
          model.currentOrder + model.totalOrdered

        newModel =
          { model | currentOrder = 0, totalOrdered = orderTotal, isOrdering = False }

      in
        (newModel, Cmd.none)

    CancelOrder ->
      let
        newModel =
          { model | currentOrder = 0, isOrdering = False }

      in
        (newModel, Cmd.none)

