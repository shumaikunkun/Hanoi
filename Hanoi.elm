module Hanoi exposing (main)

import Html


hanoi : Int -> String -> String -> String -> List String
hanoi n x y z =
    (if n > 1 then
        hanoi (n - 1) x z y

     else
        []
    )
        ++ [ x ++ "=>" ++ y ]
        ++ (if n > 1 then
                hanoi (n - 1) z y x

            else
                []
           )


main : Html.Html msg
main =
    Html.div []
        (hanoi 3 "a" "b" "c"
            |> List.map (\text -> Html.div [] [ Html.text text ])
        )
