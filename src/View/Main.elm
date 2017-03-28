module View.Main exposing (view)


import Html exposing (Html, Attribute, button, div, h2, li, text, ul)
import Html.Attributes exposing (style)
import Html.Events exposing (onClick)
import Messages exposing (Msg(..))
import Models exposing (Model)
import Tacos.View as Tacos
import DestroyWorld.View as DestroyWorld
import DestroyCountry.View as DestroyCountry


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


optionListStyle : Attribute msg
optionListStyle =
  style
    [ ("list-style", "none" )
    , ("display", "block")
    , ("margin", "0")
    , ("padding", "0")
    ]


optionWrapperStyle : Attribute msg
optionWrapperStyle =
  style
    [ ("padding", "16px 12px")
    , ("border-bottom", "1px solid rgba(0,0,0,0.3)")
    ]


view : Model -> Html Msg
view model =
  div [ mainBodyStyle ]
    [ h2 [] [ text "What would you like to do today?" ]
    , ul [ optionListStyle ]
      [ li [ optionWrapperStyle ]
        [ (Html.map UpdateTacos (Tacos.view model.tacos)) ]
      , li [ optionWrapperStyle ]
        [ (Html.map UpdateDestroyCountry (DestroyCountry.view model.destroyCountry)) ]
      , li [ optionWrapperStyle ]
        [ (Html.map UpdateDestroyWorld (DestroyWorld.view model.destroyWorld)) ]
      ]
    ]