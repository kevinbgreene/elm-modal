module View.DeathScreen exposing (view)


import Html exposing (Html, Attribute, div, h2, text)
import Html.Attributes exposing (style)
import Messages exposing (Msg)


deathScreenStyle : Attribute msg
deathScreenStyle =
  style
    [ ("position", "fixed")
    , ("top", "0")
    , ("left", "0")
    , ("background-color", "rgb(0,0,0)")
    , ("color", "rgb(255,0,0)")
    , ("height", "100%")
    , ("width", "100%")
    ]


deathHeaderStyle : Attribute msg
deathHeaderStyle =
  style
    [ ("position", "absolute")
    , ("top", "50%")
    , ("left", "50%")
    , ("margin-right", "-50%")
    , ("transform", "translate(-50%, -50%)")
    ]


view : Html Msg
view =
  div [ deathScreenStyle ]
    [ h2 [ deathHeaderStyle ]
      [ text "The world has been destroyed. Have a nice day :)" ]
    ]