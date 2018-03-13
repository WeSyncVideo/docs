module View.NotFoundPage exposing (notFoundView)


import Html exposing (Html, div, text)
import Messages exposing (Msg)


notFoundView : Html Msg
notFoundView =
  div []
        [ text "Video Page!!"
        ]
