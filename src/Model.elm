module Model exposing (Model, initialModel)

import Messages exposing (Msg)

type alias Model =
  {
  }

initialModel : (Model, Cmd Msg)
initialModel =
  ( {}
  , Cmd.none
  )
