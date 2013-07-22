TOP_DIR = ../..
include $(TOP_DIR)/tools/Makefile.common

WD = $(shell pwd)

JARFILE = $(WD)/dist/lib/kbapi_common.jar

all: jar

what:
	echo $(JAVA_SRC)
	echo $(JAVA_CLASS)
	echo $(JAVA_CLASS_ALL)

bin: 

jar: 
	ant -Djar_file=$(JARFILE) -Dkb_top=$(KB_TOP) dist

deploy: deploy-client
deploy-service: deploy-client
deploy-client: deploy-libs  deploy-java

deploy-java: jar
	cp $(JARFILE) $(TARGET)/lib

test:
	echo "no tests available for kbapi_common"
clean:
	ant clean

include $(TOP_DIR)/tools/Makefile.common.rules
