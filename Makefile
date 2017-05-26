APP = setuptools_scss

.PHONY: default isort check-isort check-flake8 check-all

default: check-all

isort:
	isort

check-all: check-isort check-flake8

check-isort:
	isort --check-only --diff

check-flake8:
	flake8 --config=.flake8 --format=pylint --show-source ${APP}
