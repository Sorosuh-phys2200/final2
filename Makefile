GRAPH = gnuplot

CC = clang
CFLAGS = -Wall -O0 -g
LFLAGS = -O0 -g
LIBS = -lgsl -lm

q2: q2.o
	${CC} $(LFLAGS) -o $@ $^ $(LIBS)

res1: q2
	./q2 > res1

figs: figs.gpl res1
	$(GRAPH) figs.gpl

clean :
	rm -f *~
	rm -f *.o
	rm -f q2

veryclean : clean
	rm -f res1 *.png
