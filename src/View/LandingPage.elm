module View.LandingPage exposing (landingView)


import Html exposing (Html, div, text)
import Model exposing (Model)
import Messages exposing (Msg)


landingView : Model -> Html Msg
landingView model =
    div []
        [ text "Landing Page!!"
        ]
