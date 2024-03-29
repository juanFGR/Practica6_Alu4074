CC=gcc
CXX=g++
RM=rm -f
CFLAGS=-g -O2
LDFLAGS=-g -O2

SIMULADOR=Simulador.cpp
PARENTIZACION=Parentizacion.cpp
SUBSECUENCIA=SubSecuencia.cpp

SRCS=main.cpp $(SIMULADOR) $(PARENTIZACION) $(SUBSECUENCIA)
OBJS=$(subst .cpp,.o,$(SRCS))

all: main

main: $(OBJS)
	$(CXX) $(LDFLAGS) -o main $(OBJS) 

depend: .depend

.depend: $(SRCS)
	rm -f ./.depend
	$(CXX) $(CPPFLAGS) -MM $^>>./.depend;

clean:
	$(RM) $(OBJS)

dist-clean: clean
	$(RM) *~ .dependtool

include .depend
