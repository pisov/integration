SUBROUTINE midpnt(func,a,b,s,n)
  INTEGER n
  DOUBLE PRECISION a,b,s,func
  EXTERNAL func
  INTEGER it,j
  DOUBLE PRECISION ddel,del,sum,tnm,x

  if (n.eq.1) then
    s=(b-a)*func(0.5*(a+b))
  else
    it=3**(n-2)
    tnm=it
    del=(b-a)/(3.*tnm)
    ddel=del + del
    x=a+0.5*del
    sum=0.
    do j=1,it
      sum = sum + func(x)
      x = x+ddel
      sum = sum + func(x)
      x = x + del
    enddo
   s=(s+(b-a)*sum/tnm)/3.
  end if
return
END
