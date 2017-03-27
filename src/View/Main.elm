module View.Main exposing (view)


import Html exposing (Html, Attribute, button, div, h2, text)
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


optionButtonStyle : Attribute msg
optionButtonStyle =
  style
    [ ("appearance", "none")
    , ("padding", "12px, 16px")
    , ("color", "rgb(54,137,218)")
    , ("background", "transparent")
    , ("border", "none")
    , ("cursor", "pointer")
    , ("font-size", "1em")
    ]


view : Html Msg
view =
  div [ mainBodyStyle ]
    [ h2 [] [ text "What would you like to do today?" ]
    , button [ optionButtonStyle, (onClick RequestConfirmation) ]
      [ text "Blow up the world!" ]
    ]