#!/usr/bin/env bash

subject() {
  # https://github.com/bats-core/bats-core/pull/65
  ./server 3>- &
  SERVER_PID=$!
}

teardown() {
  kill $SERVER_PID
}

@test "server returns 204" {
  subject
  run curl localhost -v

  [[ "$output" =~ "HTTP/1.1 204 No Content" ]]
}
