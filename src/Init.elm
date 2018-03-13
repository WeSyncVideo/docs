module Init exposing (initialModel)


import Model exposing (Model, Route(LandingRoute))
import Messages exposing (Msg)


initialModel : (Model, Cmd Msg)
initialModel =
  ( { route = LandingRoute
    }
  , Cmd.none
  )
