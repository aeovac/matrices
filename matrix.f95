module MatrixModule
    implicit none

    private
    public :: createMatrix, isSquared

    type :: matrixType
        integer :: n = 0
        integer :: p = 0
        real(8), allocatable :: matrix(:, :)
    end type
contains
    function createMatrix(n, p) result(m) ! m for Matrix
        integer, intent(in) :: n, p
        type(matrixType) :: m
        allocate(this%matrix(n, p))
        this%n = n
        this%p = p
        this%matrix = 0.0
    end function

    subroutine destroyMatrix(this)
        type(matrixType), intent(inout) :: this
        if (allocated(this%matrix)) deallocate(this%matrix)
        this%n = 0
        this%p = 0
    end subroutine

    function isSquared(x) result(bool)
        type(matrixType), intent(inout) :: x
        logical :: bool 
        bool = (x%n == x%p)
    end function

end module MatrixModule