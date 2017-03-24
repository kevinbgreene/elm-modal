module View exposing (view)

import Html
import Html exposing (Html, Attribute, div, h1, text)
import Html.Attributes exposing (style)
import Messages exposing (Msg)
import Models exposing (Model)

modalContainerStyle : Attribute msg
modalContainerStyle =
  style
    [ ("position", "relative")
    ]

maskStyle : Attribute msg
maskStyle =
  style
    [ ("backgroundColor", "rgba(0,0,0,0.3")
    , ("position", "fixed")
    , ("top", "0")
    , ("left", "0")
    , ("width", "100%")
    , ("height", "100%")
    ]


modalStyle : Attribute msg
modalStyle =
  style
    [ ("backgroundColor", "rgba(255,255,255,1.0")
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
  div []
    [ h1 [] [ text model.msg ]
    , div [ modalContainerStyle ]
      [ div [ maskStyle ]
        [ div [ modalStyle ]
          [ text "Hey look, a modal!" ]
        ]
      ]
    ]