REBAR = ./rebar
THRIFT = thrift

.PHONY: all compile clean get-deps

all: compile

compile:
	@$(REBAR) compile

clean:
	@$(REBAR) clean

get-deps:
	@$(REBAR) get-deps
