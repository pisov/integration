FC=gfortran
CFLAGS=-O3
LDFLAGS=
EXE=improp.x
SRC=improp.f90  midpnt.f90  qsimp.f90 
OBJ=$(SRC:.f90=.o)

all: $(SRC) $(EXE)

$(EXE): $(OBJ)
	$(FC) $(OBJ) -o $(EXE) $(LDFLAGS) 


%.o: %.f90 
	$(FC) $(CFLAGS) -c $< -o $@

clean:
	rm -f *.mod $(OBJ) $(EXE)
