-module(elasticsearch_thrift).
-behaviour(thrift_service).

-include_lib("types.hrl").

-export([function_info/2]).

function_info('execute', params_type) ->
  {struct, [{1, {struct, {'elasticsearch_types', 'restRequest'}}}]};
function_info('execute', reply_type) ->
  {struct, {'elasticsearch_types', 'restResponse'}};
function_info('execute', exceptions) ->
  {struct, []};
function_info(_Func, _Info) -> no_function.
