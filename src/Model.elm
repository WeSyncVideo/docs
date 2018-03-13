module Model exposing (Model, Route(..))

type alias Model =
  { route : Route
  }

type Route
  = LandingRoute
  | VideoRoute
  | NotFoundRoute
