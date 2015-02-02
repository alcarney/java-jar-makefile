SRC_DIR=src/
BASE_PKG=org/alcarney/

helloworld:
	javac $(SRC_DIR)$(BASE_PKG)HelloWorld.java -d build/

jar: helloworld
	cd build ; jar cfm ../HelloWorld.jar ../manifest.txt $(BASE_PKG)HelloWorld.class

.PHONY: clean

clean:
	rm -r build/org/
