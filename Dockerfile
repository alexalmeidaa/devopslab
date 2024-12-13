# Nome do Workflow
name: myapp

# Evento que irá acionar a pipeline
on:
  push:
    branches:
      - main

jobs:
  Build:
    runs-on: ubuntu-latest
    steps:
      - name: Download do Repositório
        uses: actions/checkout@v4       # https://github.com/actions/checkout

      - name: Setup Python
        uses: actions/setup-python@v5   # https://github.com/actions/setup-python
        with:
          python-version: '3.10'
