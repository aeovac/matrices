module MatrixModule
    implicit none

    private
    public :: createMatrix, isSquared, Matrix

    type :: Matrix
        integer :: n, p
        real, allocatable :: map(:, :)
    end type
contains
    function createMatrix(n, p) result(m) ! m for Matrix
        integer, intent(in) :: n, p
        type(Matrix) :: m
        allocate(m%map(n, p))
        m%n = n
        m%p = p
        m%map = 0.0
    end function

    subroutine destroyMatrix(x)
        type(Matrix), intent(inout) :: x
        if (allocated(x%map)) deallocate(x%map)
        x%n = 0
        x%p = 0
    end subroutine

    function isSquared(x) result(bool)
        class(Matrix), intent(inout) :: x
        logical :: bool 
        bool = (x%n .eq. x%p)
    end function

end module MatrixModule