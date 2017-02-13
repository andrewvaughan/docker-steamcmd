REPOSITORY = andrewvaughan/steamcmd

all: precise trusty xenial yakkety zesty

push: precise trusty xenial yakkety zesty
	docker push $(REPOSITORY):latest
	docker push $(REPOSITORY):devel
	docker push $(REPOSITORY):precise
	docker push $(REPOSITORY):12.04
	docker push $(REPOSITORY):trusty
	docker push $(REPOSITORY):14.04
	docker push $(REPOSITORY):xenial
	docker push $(REPOSITORY):16.04
	docker push $(REPOSITORY):yakkety
	docker push $(REPOSITORY):16.10
	docker push $(REPOSITORY):zesty
	docker push $(REPOSITORY):17.04

clean:
	-docker rmi $(REPOSITORY):latest
	-docker rmi $(REPOSITORY):devel
	-docker rmi $(REPOSITORY):precise
	-docker rmi $(REPOSITORY):12.04
	-docker rmi $(REPOSITORY):trusty
	-docker rmi $(REPOSITORY):14.04
	-docker rmi $(REPOSITORY):xenial
	-docker rmi $(REPOSITORY):16.04
	-docker rmi $(REPOSITORY):yakkety
	-docker rmi $(REPOSITORY):16.10
	-docker rmi $(REPOSITORY):zesty
	-docker rmi $(REPOSITORY):17.04

precise:
	docker build -t $(REPOSITORY):precise ./precise
	docker tag $(REPOSITORY):precise $(REPOSITORY):12.04

trusty:
	docker build -t $(REPOSITORY):trusty ./trusty
	docker tag $(REPOSITORY):trusty $(REPOSITORY):14.04

xenial:
	docker build -t $(REPOSITORY):xenial ./xenial
	docker tag $(REPOSITORY):xenial $(REPOSITORY):16.04
	docker tag $(REPOSITORY):xenial $(REPOSITORY):latest

yakkety:
	docker build -t $(REPOSITORY):yakkety ./yakkety
	docker tag $(REPOSITORY):yakkety $(REPOSITORY):16.10

zesty:
	docker build -t $(REPOSITORY):zesty ./zesty
	docker tag $(REPOSITORY):zesty $(REPOSITORY):17.04
	docker tag $(REPOSITORY):zesty $(REPOSITORY):devel


.PHONY: all push clean precise trusty xenial yakkety zesty
