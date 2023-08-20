# Text generation web UI with aider

Welcome to project powered by Text generation web UI and aider. This repository contains scripts and components to set up a user-friendly web interface for generating code using open source models.

## Features

Utilize open source AI models for text generation through aider.

* [aider](https://github.com/paul-gauthier/aider)
* [text-generation-webui](https://github.com/oobabooga/text-generation-webui)


## Table of Contents

- [Setup](#setup)
- [Installation](#installation)
- [Usage](#usage)
- [Configuration](#configuration)
- [Contributing](#contributing)
- [License](#license)
- [Acknowledgments](#acknowledgments)

## Setup

1. **Clone the repository:**
    ```bash
    git clone https://github.com/klipski/aider-with-text-generation-webui.git
    cd aider-with-text-generation-webui
    ```

2. **Run the setup script:**
    ```bash
    ./setup.sh
    ```

    During the setup process, you'll be prompted to choose between installing PyTorch for GPU (NVIDIA) or CPU.

3. **Install models for text-generation-webui:**

    Follow the instructions provided in the [text-generation-webui repository](https://github.com/oobabooga/text-generation-webui#downloading-models) to download and install models.


## Installation

Additional dependencies are automatically installed during the setup process.

## Usage

1. **Start the server:**
    Run the server using the following command:
    ```bash
    ./server.sh
    ```

2. **Generate code using aider:**
    To use aider for code generation, run the `aider.sh` script with an appropriate parameters, such as a file containing JS code:
    ```bash
    ./aider.sh hello.js
    ```
    Alternatively, you can run aider without parameters:
    ```bash
    ./aider.sh
    ```

## Contributing

We welcome contributions from the community. To contribute, follow these steps:
- Fork the repository.
- Create a new branch for your feature or fix.
- Submit a pull request with a clear explanation of your changes.

## License

This project is licensed under the [MIT License](link-to-license-file).

## Acknowledgments

This project draws inspiration from the following sources:

- [Comment by `Sopitive`](https://github.com/paul-gauthier/aider/issues/43#issuecomment-1622040588) in the Aider repository.
