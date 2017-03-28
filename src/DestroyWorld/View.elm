module DestroyWorld.View exposing (view, modal)


import Json.Decode as Json
import Html exposing (Html, Attribute, button, div, h3, p, text)
import Html.Events exposing (onClick)
import DestroyWorld.Messages exposing (Msg(..))
import DestroyWorld.Models exposing (Model)
import Styles exposing (optionButtonStyle, modalHeaderStyle, modalBodyStyle)


view : Model -> Html Msg
view model =
  div []
    [ button [ optionButtonStyle, (onClick RequestWorldDestruction) ]
      [ text "Blow up the world!" ]
    ]


modal : Html Msg
modal =
  div []
    [ h3 [ modalHeaderStyle ]
      [ text "Are you sure you want to blow up the world?" ]
    , div [ modalBodyStyle ]
      [ p []
        [ text "This action cannot be reverted. Once confirmed we will all meet our maker, whoever she is." ]
      ]
    , div []
      [ button [ optionButtonStyle, (onClick AbortWorldDestruction) ]
        [ text "Wait, am I on the world?" ]
      , button [ optionButtonStyle, (onClick ConfirmWorldDestruction) ]
        [ text "Yes, blow it up!" ]
      ]
    ]