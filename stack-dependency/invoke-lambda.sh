#!/bin/bash
current_dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

func='stackDependency'
event_script="$current_dir/event.json.sh"
param=${1:-"stack-dependency-support"}

$current_dir/../invoke-lambda.sh $func $event_script $param
