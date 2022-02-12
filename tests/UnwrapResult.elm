module UnwrapResult exposing (..)

import Expect
import Test exposing (Test, describe, test)
import Unwrap


suite : Test
suite =
    describe "Unwrap"
        [ test "result" <|
            \_ ->
                Unwrap.result (Err ())
                    |> Expect.equal ()
        ]
