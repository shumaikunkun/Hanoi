% This is Erlang code

-module(prog).
-export([main/0]).

main() ->
    hanoi(3,"a","b","c").

hanoi(1,X,_,Z) -> io:format("~s=>~s~n", [X, Z]);
hanoi(N,X,Y,Z) when N > 0 ->
    hanoi(N - 1, X, Z, Y),
    io:format("~s=>~s~n", [X, Z]),
    hanoi(N - 1, Y, X, Z).
