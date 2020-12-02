#!/bin/sh -l

token="$INPUT_TOKEN"
context="$INPUT_CONTEXT"
url="$INPUT_URL"
command="$INPUT_COMMAND"

rancher login --context $context --token $token $url  && rancher $command
