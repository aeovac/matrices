program main
    use MatrixModule
    implicit none

    type(Matrix) :: A
    logical :: is
    
    A = createMatrix(4, 3)
    is = isSquared(A)
    print *,is

end program main