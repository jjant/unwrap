module UnwrapMaybe exposing (suite)

import Expect
import Test exposing (Test, describe, test)
import Unwrap


suite : Test
suite =
    describe "Unwrap"
        [ test "maybe" <|
            \_ ->
                Unwrap.maybe Nothing
                    |> Expect.equal ()
        ]
