#!/bin/bash

# Check if the virtual environment is activated
if [[ -z $VIRTUAL_ENV ]]; then
    echo "Activating the Python virtual environment..."
    source venv/bin/activate
fi

cd text-generation-webui
echo "Running the Python server for text-generation-webui..."
python server.py --extensions openai

deactivate
