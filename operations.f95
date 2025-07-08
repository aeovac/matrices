module MatrixOperations

contains
    function addMatrices(x) result(y)
        type(matrixType), dimension(:), intent(in) :: x ! All matrices in order
        ! Checking if all matrices has the same length (n x p)   

        integer :: n, p
        integer :: i, j

        ! z
        type(matrixType) :: y
        call createMatrix(y, i, j)
    end function        


    interface operator(+)
        module procedure add
    end interface
end module MatrixOperations