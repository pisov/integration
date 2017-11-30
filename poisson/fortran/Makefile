FC=gfortran
CFLAGS=-O3
LDFLAGS=
EXE=poisson.x
SRC=trapzd.f90 qtrap.f90 poisson.f90
OBJ=$(SRC:.f90=.o)

all: $(SRC) $(EXE)

$(EXE): $(OBJ)
	$(FC) $(OBJ) -o $(EXE) $(LDFLAGS) 


%.o: %.f90 
	$(FC) $(CFLAGS) -c $< -o $@

clean:
	rm -f *.mod $(OBJ) $(EXE)
