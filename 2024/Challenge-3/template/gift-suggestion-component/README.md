## Prerequisites

- Python 3.13.0 (or newer)

## Activate Python Virtual Environment

The actual process of activating the virtual environment for Python may differ based on your shell and operating system. You can read more about virtual environments in the context of Python [here](https://docs.python.org/3/library/venv.html). Alternatively, find the proper script in `./venv/bin/`. The sample here should how to activate the virtual environment using Bash or ZSH:

```bash
# Activate Virtual Environment
source ./venv/bin/activate
```

## Install Dependencies listed in `requirements.txt`

All necessary dependencies are listed in `requirements.txt`. You can use `pip` to install those dependencies in your virtual environment:

```bash
# Install dependencies listed in requirements.txt
pip install -r requirements.txt
```


## (Re)Generating bindings

Use `componentize-py` to (re-)generate Python bindings:

```bash
componentize-py bindings .
```

## Compile The Python Module To Wasm

Use `componentize-py` to compile your source code down to WebAssembly:

```bash
componentize-py -d ./wit/ -w gift-suggestions-generator componentize -m spin_sdk=spin-imports app -o gift-suggestions-generator.wasm
```

## Deactivate the Python Virtual Environment

To deactivate the virtual environment, execute the following command:

```bash
deactivate
```