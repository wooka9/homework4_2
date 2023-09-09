-module(lesson3_task3_tests).
-include_lib("eunit/include/eunit.hrl").
-import(lesson3_task3,[split/2]).

split_test_() ->
    [?_assert(split(<<>>, ":|:") =:= [<<>>]),
     ?_assert(split(<<"a">>, ":|:") =:= [<<"a">>]),
     ?_assert(split(<<"a:|:b:|:c:|:d">>, ":|:") =:= [<<"a">>, <<"b">>, <<"c">>, <<"d">>]),
     ?_assert(split(<<"a:|:b:|::|::|:c:|:d">>, ":|:") =:= [<<"a">>, <<"b">>, <<>>, <<>>, <<"c">>, <<"d">>]),
     ?_assertException(error, {case_clause, _}, split([],":|:"))
    ].
