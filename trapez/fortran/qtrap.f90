SUBROUTINE qtrap(func,a,b,s)
  REAL :: a,b,func,s
  EXTERNAL func
  REAL, PARAMETER :: EPS=1.e-6
  INTEGER, PARAMETER :: JMAX=20

  INTEGER :: j
  REAL :: olds
  olds=-1.e30
  do j=1,JMAX
    call trapzd(func,a,b,s,j)
    if (j.gt.5) then
      if (abs(s-olds).lt.EPS*abs(olds).or.(s.eq.0..and.olds.eq.0.)) return
    endif
    olds=s
  enddo 
  write(0,*) 'too many steps in qtrap'
  stop
END
