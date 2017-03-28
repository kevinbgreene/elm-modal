module View.Modal exposing (view)


import Html
import Html exposing (Html, Attribute, button, div, h3, p, span, text)
import Html.Attributes exposing (style, id, tabindex)
import Html.Events exposing (onClick, onFocus)
import Messages exposing (Msg(..))
import Models exposing (Model, Modal(..))
import Tacos.View as Tacos
import DestroyWorld.View as DestroyWorld
import DestroyCountry.View as DestroyCountry


maskStyle : Attribute msg
maskStyle =
  style
    [ ("background-color", "rgba(0,0,0,0.3)")
    , ("position", "fixed")
    , ("top", "0")
    , ("left", "0")
    , ("width", "100%")
    , ("height", "100%")
    ]


modalStyle : Attribute msg
modalStyle =
  style
    [ ("background-color", "rgba(255,255,255,1.0)")
    , ("position", "absolute")
    , ("top", "50%")
    , ("left", "50%")
    , ("height", "auto")
    , ("max-height", "80%")
    , ("width", "700px")
    , ("max-width", "95%")
    , ("padding", "10px")
    , ("border-radius", "3px")
    , ("box-shadow", "1px 1px 5px rgba(0,0,0,0.5)")
    , ("transform", "translate(-50%, -50%)")
    ]


view : Model -> Html Msg
view model =
  case model.modal of
    Nothing ->
      div [ style [("display", "none")] ] []

    Just modal ->
      div [ maskStyle ]
        [ span [ (onFocus ResetModalFocus), (tabindex 0) ] []
        , div [ modalStyle, (id "modal-window"), (tabindex -1) ]
          [ modalContent modal ]
        , span [ (onFocus ResetModalFocus), (tabindex 0) ] []
        ]


modalContent : Modal -> Html Msg
modalContent wrappedModal =
  case wrappedModal of
    TacoModal modal ->
      Html.map UpdateTacos Tacos.modal

    WorldModal modal ->
      Html.map UpdateDestroyWorld DestroyWorld.modal

    CountryModal modal ->
      Html.map UpdateDestroyCountry DestroyCountry.modal
