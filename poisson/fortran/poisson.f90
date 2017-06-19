program poisson
implicit none
interface
  function funcOne(x)
  REAL, INTENT(IN) :: x
  REAL :: funcOne
  end function funcOne
  function funcTwo(x)
  REAL, INTENT(IN) :: x
  REAL :: funcTwo
  end function funcTwo
end interface

real :: xmin, xmax, h, xx, yy, s1, s2
integer :: i, n

n = 100
xmin = 0.e0
xmax = 1.e0
h = (xmax - xmin) / (n - 1)

do i = 0, n - 1
  xx = i * h
!Solution[x_] := Integrate[Source[y]*y*(1-x),{y,0,x}]+Integrate[x*(1-y)*Source[y],{y,x,1}]
  call qtrap(funcOne,0.e0,xx,s1)
  call qtrap(funcTwo,xx,1.e0,s2)
  yy = (1.e0 - xx) * s1 + xx * s2
  write(*,'(3F15.7)')xx,yy,xx*(1.e0-xx)*exp(xx)
end do

end program poisson

function funcOne(x)
  real, intent(in) :: x
  real :: funcOne

  funcOne =  x * (x + 3.e0) * exp(x) * x 
end function funcOne

function funcTwo(x)
  real, intent(in) :: x
  real :: funcTwo

  funcTwo =  x * (x + 3.e0) * exp(x) * (1.e0 - x)
end function funcTwo
