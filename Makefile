build_publish:
	cd earth/ && docker build . -t stanleynguyen/hello-earth && docker push stanleynguyen/hello-earth &&\
	cd ../jupiter && docker build . -t stanleynguyen/hello-jupiter && docker push stanleynguyen/hello-jupiter &&\
	cd ../mars && docker build . -t stanleynguyen/hello-mars && docker push stanleynguyen/hello-mars &&\
	cd ../mercury && docker build . -t stanleynguyen/hello-mercury && docker push stanleynguyen/hello-mercury &&\
	cd ../venus && docker build . -t stanleynguyen/hello-venus && docker push stanleynguyen/hello-venus