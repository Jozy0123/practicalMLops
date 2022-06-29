install:
	pip install --upgrade pip && pip install -r requirements.txt
lint:
	pylint --disable=R,C src/hello.py
test:
	python -m pytest -vv --cov=src.hello tests/test_hello.py
format:
	autopep8 --in-place --aggressive --aggressive src/hello.py
	autopep8 --in-place --aggressive --aggressive tests/test_hello.py