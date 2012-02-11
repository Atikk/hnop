GHC = ghc
GHCFLAGS = -package nop

default:
	cd ..; runhaskell Setup register --user --inplace
	make test
	cd ..; runhaskell Setup unregister --user

TestNoOp: TestNoOp.o
	$(GHC) $(GHCFLAGS) $^ -o $@

test:	\
	TestNoOp.diff

clean:
	rm -rf TestNoOp \
        *.out *.o *.hi Makefile.bak

%.diff: %.ref %.out
	diff -u $^

%.diff0: %.out
	echo -n | diff -u - $^

%.out: %
	./$< > $@

%.run: %
	./$<

%.hi: %.o
	@:

%.o: %.hs
	$(GHC) $(GHCFLAGS) -c $< -o $@

%.o: %.lhs
	$(GHC) $(GHCFLAGS) -c $< -o $@

FORCE:

.SECONDARY:
