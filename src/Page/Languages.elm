module Page.Languages exposing (Model)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Data.Language exposing (Language)

-- Model

type alias Model =
    { languages:  List Language
    }

initialModel : Model
initialModel =
    {
    }

-- View

view : Model -> Html Msg
view model =
    div [ class "language-page" ]
        [ div [ class "languages" ]
            [ model.languages
                |> List.map viewLanguage
            ]
        ]

viewLanguage : Language -> Html Msg
viewLanguage language =
    div [][]

