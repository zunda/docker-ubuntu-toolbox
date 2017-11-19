TAG=zunda/ubuntu-toolbox

default: image
image:
	docker build --tag $(TAG) .

run:
	docker run --interactive --tty $(TAG)
