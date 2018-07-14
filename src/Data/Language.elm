module Data.Language exposing (Language, LanguageCode)

import Json.Encode as Encode exposing (Value)

type alias Language =
    { name : String
    , code : LanguageCode
    }

-- Serialization



-- Identifiers

type LanguageCode
    = LanguageCode String

languageCodeToString : LanguageCode -> String
languageCodeToString (LanguageCode code) =
    code

encodeLanguageCode : LanguageCode -> Value
encodeLanguageCode (LanguageCode code) =
    Encode.string code
