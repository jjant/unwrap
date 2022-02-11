module Unwrap exposing (maybe, result)

{-|

@docs maybe, result

-}


{-| Unwrap if it's a Just or crash.
-}
maybe : Maybe a -> a
maybe ma =
    case ma of
        Just a ->
            a

        Nothing ->
            maybe ma


{-| Unwrap if it's an Ok or crash.
-}
result : Result e a -> a
result ra =
    case ra of
        Ok a ->
            a

        Err _ ->
            result ra
