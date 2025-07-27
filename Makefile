up:
	docker build -t mydocs .
	docker run --rm -p 8000:8000 -v ${PWD}:/docs mydocs

build:
	mkdocs build

serve:
	mkdocs serve

deploy:
	mkdocs gh-deploy
