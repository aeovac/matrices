module Matrix
    implicit none

    type :: matrixType
        integer :: n
        integer :: p
        real, allocatable :: matrix(:,:)
    contains
        procedure :: create
    end type matrixType
    
contains
    subroutine create(this, n, p)
        class(matrixType) :: this
        integer :: n, p
        allocate(this%matrix(n, p))
        this%n = n
        this%p = p
        this%matrix = 0.0
    end subroutine create
end module Matrix


program main
    use Matrix
    implicit none
end program main
