module View.LandingPage exposing (landingView)


import Html exposing (Html, div, text, h1, input, button)
import Html.Attributes exposing (class, id, type_)
import Html.Events exposing (onClick)
import Model exposing (Model, Route(..))
import Messages exposing (Msg(..))


landingView : Model -> Html Msg
landingView model =
    div [ id "landing" ]
        [ div
            [ class "action host"
            , onClick (Navigate VideoRoute)
            ]
            [ h1 [ class "title" ] [ text "host" ]
            ]
        , div
            [ class "action watch"
            , onClick (Navigate VideoRoute)
            ]
            [ h1 [ class "title" ] [ text "watch" ]
            , input [ class "hidden-field uuid-field" ] []
            ]
        ]
