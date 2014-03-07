LDLIBS=-lIrrlicht
LDFLAGS=-L ~/Downloads/irrlicht-trunk/include -L ~/Downloads/irrlicht-trunk/source/Irrlicht
LIBS=-lIrrlicht
EXTRA_CXXFLAGS=-I ~/Downloads/irrlicht-trunk/include -I ~/Downloads/irrlicht-trunk/lib/Linux -D_LOCAL_IRRLICHT
CXX=g++
CXXFLAGS= -std=c++11 -Wall -g ${EXTRA_CXXFLAGS}
# Discarded switches:  -lXxf86vm -lGL -lX11 -lXcursor -D_IRR_STATIC_LIB_

all: ExperimentalGame

OpenHorizons: main.o DriverSelectionConfiguration.o
	${CXX} ${LDFLAGS} ${LIBS} $^ -o $@

.PHONY: clean

clean:
	rm -f *.o OpenHorizons
