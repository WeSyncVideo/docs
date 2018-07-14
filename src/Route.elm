module Route exposing (Route(..))

import UrlParser as Url exposing (Parser, oneOf)

-- Routing

type Route
    = Languages
    | Api
    | NotFound

route : Parser (Route -> a) a
route =
    oneOf
        [
        ]
