SUBROUTINE qsimp(func,a,b,s)
IMPLICIT NONE

DOUBLE PRECISION :: a,b,func,s
DOUBLE PRECISION, PARAMETER :: EPS=1.e-8
INTEGER, PARAMETER :: JMAX = 20
EXTERNAL func
INTEGER :: j
DOUBLE PRECISION :: os,ost,st

ost=-1.e30
os= -1.e30
do j=1, JMAX
  call midpnt(func,a,b,st,j)
  s=(9.*st-ost)/8.
  if (j.gt.5) then
    if (abs(s-os).lt.EPS*abs(os).or.(s.eq.0..and.os.eq.0.)) return
  endif
  os=s
  ost=st
end do
write(0,*) 'too many steps in qsimp'
stop
END
