module Styles exposing (..)


import Html exposing (Attribute)
import Html.Attributes exposing (style)


optionButtonStyle : Attribute msg
optionButtonStyle =
  style
    [ ("display", "inline-block")
    , ("appearance", "none")
    , ("padding", "12px, 16px")
    , ("color", "rgb(54,137,218)")
    , ("background", "transparent")
    , ("border", "none")
    , ("cursor", "pointer")
    , ("font-size", "1em")
    ]


-- MODAL STYLES


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


modalDescStyle : Attribute msg
modalDescStyle =
  style
    [ ("margin", "0 0 8px 0") ]


textInputStyle : Attribute msg
textInputStyle =
  style
    [ ("display", "block")
    , ("width", "100%")
    , ("line-height", "24px")
    , ("margin", "0 0 8px 0")
    , ("border", "1px solid rgba(0,0,0,0.3)")
    ]