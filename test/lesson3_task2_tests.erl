-module(lesson3_task2_tests).
-include_lib("eunit/include/eunit.hrl").
-import(lesson3_task2,[words/1]).

words_test_() ->
    [?_assert(words(<<"a">>) =:= [<<"a">>]),
     ?_assert(words(<<"a b c d">>) =:= [<<"a">>, <<"b">>, <<"c">>, <<"d">>]),
     ?_assertException(error, function_clause,words([]))
    ].
