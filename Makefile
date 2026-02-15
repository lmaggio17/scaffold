install:
	python3 -m pip install -r requirements.txt

test:
	python3 -m pytest -q

lint:
	python3 -m pip install flake8
	python3 -m flake8 app.py test_app.py

format:
	python3 -m pip install black
	python3 -m black app.py test_app.py

all: install lint test
