module View.Modal exposing (view)


import Html exposing (Html, Attribute, button, div, h3, p, text)
import Html.Attributes exposing (style)
import Html.Events exposing (onClick)
import Messages exposing (Msg(..))
import Models exposing (Model)


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


modalHeaderStyle : Attribute msg
modalHeaderStyle =
  style
    [ ("padding", "10px")
    , ("margin", "0px")
    , ("border-bottom", "1px solid rgba(0,0,0,0.3)")
    ]


modalBodyStyle : Attribute msg
modalBodyStyle =
  style
    [ ("padding", "10px")
    ]


view : Model -> Html Msg
view model =
  case model.isConfirmationRequested of
    True ->
      div [ maskStyle ]
        [ div [ modalStyle ]
          [ h3 [ modalHeaderStyle ]
            [ text "Are you sure you want to blow up the world?" ]
          , div [ modalBodyStyle ]
            [ p []
              [ text "This action cannot be reverted. Once confirmed we will all meet our maker, whoever she is." ]
            ]
          , div []
            [ button [ (onClick AbortWorldDestruction) ]
              [ text "Oh hell no!" ]
            , button [ (onClick ConfirmWorldDestruction) ]
              [ text "Yes, blow it up!" ]
            ]
          ]
        ]

    False ->
      div [ style [("display", "none")] ] []