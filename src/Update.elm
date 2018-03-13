module Update exposing (update)


import Messages exposing (Msg(..))
import Model exposing (Model)

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
    case msg of
        Navigate route ->
            ( { model | route = route }, Cmd.none)
