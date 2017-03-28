module DestroyCountry.View exposing (view, modal)


import Json.Decode as Json
import Html exposing (Html, Attribute, button, div, h3, input, label, p, text)
import Html.Attributes exposing (id)
import Html.Events exposing (onClick, onInput)
import DestroyCountry.Messages exposing (Msg(..))
import DestroyCountry.Models exposing (Model)
import Styles exposing (optionButtonStyle, modalHeaderStyle, modalBodyStyle, modalDescStyle, textInputStyle)


view : Model -> Html Msg
view model =
  div []
    [ button [ optionButtonStyle, (onClick ChooseCountry) ]
      [ text "Bomb a country!" ]
    , if (List.length model.countriesDestroyed) > 0 then
        div []
         [ text ("You have bombed: " ++ (String.join ", " model.countriesDestroyed)) ]

      else
        div []
          [ text "No countries bombed yet" ]
    ]


modal : Html Msg
modal =
  div []
    [ h3 [ modalHeaderStyle ]
      [ text "What country would you like to bomb now?" ]
    , div [ modalBodyStyle ]
      [ p [ modalDescStyle ]
        [ text "Please keep in mind that many people think of bombing a country as an extreme measure." ]
      , input [ (id "country-input"), (onInput UpdateTarget), textInputStyle ] []
      , button [ optionButtonStyle, (onClick AbortBombing) ]
        [ text "My tantrum is over" ]
      , button [ optionButtonStyle, (onClick ConfirmCountry) ]
        [ text "Bomb country!" ]
      ]
    ]