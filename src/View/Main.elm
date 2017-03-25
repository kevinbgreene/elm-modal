module View.Main exposing (view)


import Html exposing (Html, Attribute, button, div, text)
import Html.Attributes exposing (style)
import Html.Events exposing (onClick)
import Messages exposing (Msg(..))


mainBodyStyle : Attribute msg
mainBodyStyle =
  style
    [ ("padding", "10px")
    , ("margin", "0 auto")
    , ("width", "80%")
    , ("max-width", "1200px")
    ]


outlinButtonStyle : Attribute msg
outlinButtonStyle =
  style
    [ ("padding", "12px, 16px")
    , ("background", "rgb(255,255,255)")
    , ("color", "rgb(54,137,218)")
    , ("border", "2px solid rgb(54,137,218)")
    , ("cursor", "pointer")
    , ("font-size", "1em")
    ]


view : Html Msg
view =
  div [ mainBodyStyle ]
    [ button [ outlinButtonStyle, (onClick ShowModal) ]
      [ text "Blow up the world" ]
    ]