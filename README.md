# Pyre-Check with sapp Docker

[Pyre-Check](https://github.com/facebook/pyre-check) is an open source tool developed and maintained by Facebook to perform Static Code Analysis (SCA) on Python applications.
Primarily this tool is used for Type hinting/checking in Python 3.5+ but Facebook also use the power of the AST (Abstract Syntax Tree) parser to do security testing as well.

This Docker image focuses purely on the Security testing side of this tool.

## Build

```bash
docker build -t "fjsnogueira/pyre-check-with-sapp" .
```

## Run

```bash
# pull image
docker pull fjsnogueira/pyre-check-with-sapp
# run image passing in the source code folder and the folder used for results 
docker run -v source:/data/source -v results:/data/results pyre-check
```

## github

https://github.com/fjsnogueira/pyre-check-with-sapp

## dockerhub

https://hub.docker.com/repository/docker/fjsnogueira/pyre-check-with-sapp