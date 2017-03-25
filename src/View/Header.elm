module View.Header exposing (view)


import Html exposing (Html, Attribute, h1, text)
import Html.Attributes exposing (style)
import Messages exposing (Msg)


mainHeaderStyle : Attribute msg
mainHeaderStyle =
  style
    [ ("text-align", "center")
    , ("padding", "24px 12px 8px 12px")
    , ("border-bottom", "1px solid rgba(0,0,0,0.3)")
    ]


view : Html Msg
view =
  h1 [ mainHeaderStyle ]
    [ text "Foolproof Global Defense Systems" ]