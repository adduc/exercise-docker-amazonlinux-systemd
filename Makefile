IMAGE := adduc/exercise-systemd:amazonlinux

build-2:
	docker build --build-arg TAG=2 -t $(IMAGE)-2 .

build-2022:
	docker build --build-arg TAG=2022 -t $(IMAGE)-2022 .

delete-2:
	docker rmi $(IMAGE)-2

delete-2022:
	docker rmi $(IMAGE)-2022
