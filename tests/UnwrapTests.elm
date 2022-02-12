module UnwrapTests exposing (tests)

import Expect
import Test exposing (describe, test)
import Unwrap


tests =
    describe "Unwrap"
        [ test "maybe" <|
            \_ ->
                Unwrap.maybe Nothing
                    |> Expect.equal ()
        ]
