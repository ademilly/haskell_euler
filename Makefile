CC = ghc
CFLAGS = -fwarn-name-shadowing

src = $(wildcard src/*.hs)
bin = $(patsubst src/%.hs,bin/%,$(src))

all: $(bin)

bin/%: src/%.hs
	$(CC) $(CFLAGS) -o $@ $^
	rm src/$(@F).hi src/$(@F).o

clean:
	rm -f bin/* 2>/dev/null

.PHONY: clean 
