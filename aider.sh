#!/bin/bash

# Check if the virtual environment is activated
if [[ -z $VIRTUAL_ENV ]]; then
    echo "Activating the Python virtual environment..."
    source venv/bin/activate
fi

# Construct the base aider command
aider_command="aider --openai-api-base http://localhost:5001/v1 --openai-api-key dummy"

# Append additional parameters if provided
if [[ $# -gt 0 ]]; then
    aider_command="$aider_command $@"
fi

# Run the aider command
echo "Running aider with the following command:"
echo "$aider_command"
eval "$aider_command"
