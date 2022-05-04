## FastAPI installation on Debian 10

```sh
#!/bin/sh
echo "Installing Python PIP"
apt update -y -qq

apt install python3-pip python3-setuptools -y

echo "Upgrading PIP"

python3 -m pip install --upgrade pip

#python3 -m pip install --user --upgrade pip

echo "Installing FastAPI"

pip3 install --ignore-installed PyYAML

pip3 install "fastapi[all]"
```

## Hello FastAPI - main.py

```python3
from fastapi import FastAPI

app = FastAPI()

@app.get("/")
async def root():
    return {"message": "Hello World"}
```

## Run app
```sh
uvicorn main:app --reload
```
