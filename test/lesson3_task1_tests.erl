-module(lesson3_task1_tests).
-include_lib("eunit/include/eunit.hrl").
-import(lesson3_task1,[first_word/1]).

first_word_test_() ->
    [
     ?_assert(first_word(<<"a">>) =:= <<"a">>),
     ?_assert(first_word(<<"a b c d">>) =:= <<"a">>),
     ?_assertException(error, function_clause, first_word([]))
    ].
