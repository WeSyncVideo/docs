module View.Navigator exposing (view)


import Html exposing (Html)
import Model exposing (Model, Route(..))
import Messages exposing (Msg)
import View.LandingPage exposing (landingView)
import View.VideoPage exposing (videoView)
import View.NotFoundPage exposing (notFoundView)


view : Model -> Html Msg
view model =
  case model.route of
    LandingRoute ->
      landingView model

    VideoRoute ->
      videoView model

    NotFoundRoute ->
      notFoundView
