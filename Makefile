all: clean build

build:
	cd ./src; zip -r ../ArchiveDummy.zip .
	clear
	@echo "** Build Complete **"

setup:
	sudo npm install --prefix ./src http request

edit:
	open src/index.js src/options.js speechAssets/IntentSchema.json speechAssets/SampleUtterances.txt

clean:
	@echo "** Running Cleanup **"
	rm -rf ArchiveDummy.zip
