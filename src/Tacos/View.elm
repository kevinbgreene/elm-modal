module Tacos.View exposing (view, modal)


import Json.Decode as Json
import Html exposing (Html, Attribute, button, div, h3, input, label, p, text)
import Html.Attributes exposing (type_, style, for, id)
import Html.Events exposing (onClick, on)
import Tacos.Messages exposing (Msg(..))
import Tacos.Models exposing (Model)


orderDescStyle : Attribute msg
orderDescStyle =
  style
    [ ("margin", "0 0 8px 0") ]


orderInputStyle : Attribute msg
orderInputStyle =
  style
    [ ("display", "block")
    , ("width", "100%")
    , ("line-height", "24px")
    , ("margin", "0 0 8px 0")
    , ("border", "1px solid rgba(0,0,0,0.3)")
    ]


orderHeaderStyle : Attribute msg
orderHeaderStyle =
  style
    [ ("padding", "12px")
    , ("margin", "0px")
    , ("border-bottom", "1px solid rgba(0,0,0,0.3)")
    ]


orderBodyStyle : Attribute msg
orderBodyStyle =
  style
    [ ("padding", "10px")
    ]


orderButtonStyle : Attribute msg
orderButtonStyle =
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


view : Model -> Html Msg
view model =
  div []
    [ button [ orderButtonStyle, (onClick StartTacoOrder) ]
      [ text "Order tacos!" ]
    , if model.totalOrdered > 0 then
        div []
         [ text ("Number of tacos orderd: " ++ (toString model.totalOrdered)) ]

      else
        div []
          [ text "No tacos ordered yet" ]
    ]


modal : Html Msg
modal =
  div []
    [ h3 [ orderHeaderStyle ]
      [ text "How many tacos would you like?" ]
    , div [ orderBodyStyle ]
      [ p [ orderDescStyle ]
        [ text "Please remember that each taco ordered carries a $1,000,000 surcharge for taxpayers." ]
      , input [ (id "order-input"), (type_ "number"), (onInputInt UpdateOrder), orderInputStyle ] []
      , button [ orderButtonStyle, (onClick CancelOrder) ]
        [ text "Cancel order" ]
      , button [ orderButtonStyle, (onClick PlaceOrder) ]
        [ text "Place order" ]
      ]
    ]


onInputInt : (Int -> msg) -> Attribute msg
onInputInt tagger =
  on "input" (Json.map tagger (Json.at ["target", "valueAsNumber" ] Json.int))