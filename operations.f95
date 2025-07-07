function add(x) result(y)
    use Matrix 
    implicit none
    type(matrixType), dimension(:), intent(in) :: x ! All matrices in order
    type(matrixType) :: y
    integer :: i, j
    ! Checking if all matrices has the same length (n x p)
    print *, size(x, 1)
    print *, size(x, 2)
    ! call X%create(size(x, 1), size(x, 2))
end function add