module View.VideoPage exposing (videoView)


import Html exposing (Html, text, div, video, i)
import Html.Attributes exposing (class, id)
import Model exposing (Model)
import Messages exposing (Msg)
import View.Icon exposing (lightActiveIcon)


videoView : Model -> Html Msg
videoView model =
    div [ id "video" ]
        [ div [ class "fake-video" ]
            [ div [ class "controls" ]
                [ lightActiveIcon "play_arrow"
                ]
            ]
        ]
