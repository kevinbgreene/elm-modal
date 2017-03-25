module View exposing (..)


import Html exposing (Html, Attribute, button, div, h1, h3, text)
import Html.Attributes exposing (style)
import Html.Events exposing (onClick)
import Messages exposing (Msg(..))
import Models exposing (Model)


maskStyle : Attribute msg
maskStyle =
  style
    [ ("backgroundColor", "rgba(0,0,0,0.3)")
    , ("position", "fixed")
    , ("top", "0")
    , ("left", "0")
    , ("width", "100%")
    , ("height", "100%")
    ]


modalStyle : Attribute msg
modalStyle =
  style
    [ ("backgroundColor", "rgba(255,255,255,1.0)")
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


outlinButtonStyle : Attribute msg
outlinButtonStyle =
  style
    [ ("padding", "12px, 16px")
    , ("background", "rgb(255,255,255)")
    , ("color", "rgb(54,137,218)")
    , ("border", "2px solid rgb(54,137,218)")
    , ("cursor", "pointer")
    , ("font-size", "1em") ]


view : Model -> Html Msg
view model =
  div []
    [ h1 [] [ text model.msg ]
    , button [ outlinButtonStyle, (onClick ShowModal) ]
      [ text "Show modal" ]
    , modalView model
    ]


modalView : Model -> Html Msg
modalView model =
  case model.isModalOpen of
    True ->
      div [ maskStyle ]
        [ div [ modalStyle ]
          [ text "Hey look, a modal!"
          , button [ (onClick HideModal) ]
            [ text "Ok, I got it!" ]
          ]
        ]

    False ->
      div [ style [("display", "non")] ] []