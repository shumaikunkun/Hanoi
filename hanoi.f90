program hanoi
  implicit none
  integer :: n
  read *, n
  call tower(n, 'a', 'b', 'c')
  stop
contains
  recursive subroutine tower(n, a, b, c)
    implicit none
    integer :: n
    character :: a, b, c
    if (n == 0) then
      return
    end if
    call tower(n - 1, a, c, b)
    print *, a, " => ", b
    call tower(n - 1, c, b, a)
    return
  end subroutine tower
end program hanoi
