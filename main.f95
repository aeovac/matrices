program main
    use Matrix
    implicit none

    type(matrixType) :: A

    A = createMatrix(3, 3)


    print *, A%isSquared()

end program main