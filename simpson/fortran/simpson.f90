program integ
implicit none
interface
  function func(x)
  implicit none
  real, intent(in) :: x
  real :: func
  end function func
end interface

real :: a, b, s
integer :: n = 4

a = 0.e0
b = 1.e0

call qsimp(func,a,b,s)

write(*,*) 'Integral = ',s

end program integ

function func(x)
implicit none
real, intent(in) :: x
real :: func

  func = x ** 2

end function func
