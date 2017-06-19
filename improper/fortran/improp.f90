program integ
implicit none
interface
  function func(x)
  implicit none
  double precision, intent(in) :: x
  double precision :: func
  end function func
end interface

double precision :: a, b, s
double precision, parameter :: Pi = 3.1415926535897932d0
integer :: n = 4

a = 0.e0 
b = 1.e0

call qsimp(func,a,b,s)

write(*,'(A13,F17.9,A9,F17.9)') 'Computed = ',s, ' Exact = ',1.d0

end program integ

function func(x)
implicit none
double precision, intent(in) :: x
double precision :: func

!  func = sin(log(x))/(x*log(x))
  func = -log(x)
end function func
