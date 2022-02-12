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
            boom1 ()


{-| Unwrap if it's an Ok or crash.
-}
result : Result e a -> a
result ra =
    case ra of
        Ok a ->
            a

        Err _ ->
            boom1 ()


{-| No chance the compiler ever does TCO for mutually recursive functions so this should be fine.
-}
boom1 : a -> b
boom1 _ =
    boom2 ()


boom2 : a -> b
boom2 _ =
    boom1 ()
