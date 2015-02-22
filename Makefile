

all:
	coffee -o js -c src/collections/*.coffee
	coffee -o js -c src/models/*.coffee
	coffee -o js -c src/views/*.coffee
