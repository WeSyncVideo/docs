module View.Landing exposing (view)


import Html exposing (Html, div, text)
import Model exposing (Model)
import Messages exposing (Msg)


view : Model -> Html Msg
view model =
    div []
        [ text "WeSync Web Client!! Yay"
        ]
