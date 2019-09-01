#!/bin/bash

if [ $# -eq 0 ]
  then
	exe_name="jfrog"
  else
	exe_name="$1"
fi

go run ./python/addresources.go

CGO_ENABLED=0 go build -o $exe_name -ldflags '-w -extldflags "-static"' main.go