SUBROUTINE qsimp(func,a,b,s)
IMPLICIT NONE

REAL :: a,b,func,s
REAL, PARAMETER :: EPS=1.e-6
INTEGER, PARAMETER :: JMAX = 20
EXTERNAL func
INTEGER :: j
REAL :: os,ost,st

ost=-1.e30
os= -1.e30
do j=1, JMAX
  call trapzd(func,a,b,st,j)
  s=(4.*st-ost)/3.
  if (j.gt.5) then
    if (abs(s-os).lt.EPS*abs(os).or.(s.eq.0..and.os.eq.0.)) return
  endif
  os=s
  ost=st
end do
write(0,*) 'too many steps in qsimp'
stop
END