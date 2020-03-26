module Main exposing (main)

import Browser
import Html exposing (Html, button, div, text)
import Html.Attributes exposing (style)
import Html.Events exposing (onClick)


type alias Model =
    Int


type Msg
    = Increment
    | Decrement


main : Program () Model Msg
main =
    Browser.sandbox { init = init, update = update, view = view }


init : Model
init =
    0


update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment ->
            model + 1

        Decrement ->
            model - 1


view : Model -> Html Msg
view model =
    div []
        [ buttonView Increment "+"
        , div [ style "color" "#35495E", style "font-size" "20px" ] [ text <| String.fromInt model ]
        , buttonView Decrement "-"
        ]


buttonView : Msg -> String -> Html Msg
buttonView onClickMsg txt =
    button
        [ style "width" "50px"
        , style "font-size" "20px"
        , style "background-color" "#41B883"
        , style "color" "#35495E"
        , style "border" "none"
        , style "cursor" "pointer"
        , onClick onClickMsg
        ]
        [ text txt ]
