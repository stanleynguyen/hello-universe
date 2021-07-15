build_publish:
	docker build . -t stanleynguyen/hello-earth -f earth/Dockerfile && docker push stanleynguyen/hello-earth &&\
	docker build . -t stanleynguyen/hello-jupiter -f jupiter/Dockerfile && docker push stanleynguyen/hello-jupiter &&\
	docker build . -t stanleynguyen/hello-mars -f mars/Dockerfile && docker push stanleynguyen/hello-mars &&\
	docker build . -t stanleynguyen/hello-mercury -f mercury/Dockerfile && docker push stanleynguyen/hello-mercury &&\
	docker build . -t stanleynguyen/hello-venus -f venus/Dockerfile && docker push stanleynguyen/hello-venus