module View.VideoPage exposing (videoView)


import Html exposing (Html, div, text)
import Model exposing (Model)
import Messages exposing (Msg)


videoView : Model -> Html Msg
videoView model =
    div []
        [ text "Video Page!!"
        ]
