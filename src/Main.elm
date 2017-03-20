module Main exposing (..)


import Html
import Html exposing (Html, div, text)


main : Program Never Model Msg
main =
  Html.program
    { init = init
    , view = view
    , update = update
    , subscriptions = subscriptions
    }


type Msg =
  NoOp


type alias Model =
  { msg : String
  }


initialModel : Model
initialModel =
  { msg = "Hello World"
  }


init : (Model, Cmd Msg)
init =
  (initialModel, Cmd.none)



update : Msg -> Model -> (Model, Cmd Msg)
update msg state =
  (initialModel, Cmd.none)



view : Model -> Html Msg
view model =
  div [] [ text model.msg ]



subscriptions : Model -> Sub Msg
subscriptions model =
  Sub.none