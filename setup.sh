#!/bin/bash

echo "Creating a new Python virtual environment..."
python3 -m venv venv
source venv/bin/activate

# Exit on failure
set -e

read -p "Do you want to install PyTorch for GPU (NVIDIA) [Y/n]? " install_gpu
if [[ $install_gpu =~ ^[Yy]$ ]]; then
    echo "Installing PyTorch for GPU..."
    pip install torch torchvision torchaudio
elif [[ $install_gpu =~ ^[Nn]$ ]]; then
    echo "Installing PyTorch for CPU..."
    pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cpu
fi

# Check if text-generation-webui is already installed
if [[ ! -d "text-generation-webui" ]]; then
    echo "Installing text-generation-webui..."
    git clone https://github.com/oobabooga/text-generation-webui
fi

cd text-generation-webui
pip install -r requirements.txt
pip install -r extensions/openai/requirements.txt

echo "Installing aider-chat..."
pip install aider-chat

echo "You can call aider with local server with command: aider --openai-api-base http://localhost:5001/v1 --openai-api-key dummy"

echo "Running the Python server for text-generation-webui..."
python server.py --extensions openai

echo "Script completed."
deactivate
