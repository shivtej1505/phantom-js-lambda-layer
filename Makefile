all:
	zip -r phantom-js.zip bin examples

function:
	unzip -d function phantom-js.zip

clean:
	rm phantom-js.zip
	rm -r function
