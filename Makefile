TAG=zunda/ubuntu-toolbox

default: image
image:
	docker build --tag $(TAG) .

run:
	docker run --interactive --tty $(TAG)

push: image
	# Need to run `docker login` before this
	docker push $(TAG)

clean:
	docker images $(TAG):latest -q --no-trunc | xargs docker rmi -f
	docker images --filter "dangling=true" -q --no-trunc | xargs docker rmi -f
