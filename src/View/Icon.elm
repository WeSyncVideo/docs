{--
Icon module using Material Design Icons
https://material.io/icons/
--}

module View.Icon exposing (..)


import Html exposing (Html, text, i)
import Html.Attributes exposing (classList)
import Messages exposing (Msg)


type Color
  = Dark
  | Light


icon : String -> Color -> Bool -> Html Msg
icon name color inactive =
  let
    colorClass =
      case color of
        Dark ->
          "md-dark"

        Light ->
          "md-light"
  in
    i [ classList
        [ ("material-icons", True)
        , (colorClass, True)
        , ("md-inactive", inactive)
        ]
      ] [ text name ]


lightIcon : String -> Bool -> Html Msg
lightIcon name =
  icon name Light


lightActiveIcon : String -> Html Msg
lightActiveIcon name =
  lightIcon name False
