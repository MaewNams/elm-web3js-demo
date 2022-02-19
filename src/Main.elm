module Main exposing (..)

import Browser
import Html exposing (..)


type alias Model =
    {}


type Flags
    = Flags FlagsData


type alias FlagsData =
    {}


type Msg
    = Ignore


initFlags : FlagsData
initFlags =
    {}


init : FlagsData -> ( Model, Cmd Msg )
init _ =
    ( {}, Cmd.none )


update : Msg -> Model -> ( Model, Cmd msg )
update msg model =
    case msg of
        _ ->
            ( model, Cmd.none )


view : Model -> Html Msg
view model =
    div [] [ text "Hello world" ]


main : Program FlagsData Model Msg
main =
    Browser.element
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none
