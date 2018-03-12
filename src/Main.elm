module Main exposing (main)


import Html exposing (..)
import Model exposing (Model, initialModel)
import Messages exposing (Msg)
import Update exposing (update)
import Subscriptions exposing (subscriptions)


main : Program Never Model Msg
main =
    Html.program
        { init = initialModel
        , view = view
        , update = update
        , subscriptions = subscriptions
    }


-- SUBSCRIPTIONS




-- VIEW

view : Model -> Html Msg
view model =
    div []
        [ text "New Html Program"
        ]
