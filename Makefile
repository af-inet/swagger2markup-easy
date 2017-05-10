DIR    = swagger2markup-cli
JAR    = ./$(DIR)/build/libs/swagger2markup-cli-1.3.1.jar
SRC    = swagger.yaml
CONFIG = config.properties
DEST   = ./docs

default: $(DEST)

$(DEST): $(DIR) $(JAR) $(SRC) $(CONFIG)
	java -jar $(JAR) convert \
		-i $(SRC) \
		-c $(CONFIG) \
		-d $(DEST)

# build the jar file neccesary for generating the markup
$(JAR): $(DIR)
	cd $(DIR) && ./gradlew assemble

# clone the swagger2markup-cli repository
$(DIR):
	git clone "https://github.com/Swagger2Markup/swagger2markup-cli"

clean:
	$(RM) -r $(DEST)

.PHONY: default clean
