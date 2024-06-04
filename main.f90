program sphere_volume
use volume_calculator
implicit none
    real (kind = 8) :: radius, volume
    character(len=100) :: input
    logical :: is_real
    integer :: ios

    print *, "What's the radius of sphere?"
    read(*, '(A)') input

    do
        call check_if_real(trim(input), is_real)
        ! check if the entry is NaN
        if (is_real .eqv. .false.) then
            ! print error message for NaN
            print *, "Invalid Entry! Please enter a number:"
            read (*,*) input
        else 
            read(input, *, IOSTAT=ios) radius
            if (radius <= 0) then 
                ! print error message
                print *, "Invalid radius value! Please enter a positive value:"
                read (*,*) input
            else
                call sphere_volume_calculator(radius, volume)
                print *, "The volume of this sphere is", volume
                print *, "Enter another radius:"
                read (*,*) input
            end if
        end if 
    end do
end program sphere_volume

subroutine check_if_real(input, is_real)
    implicit none
    character(len=*), intent(in) :: input
    logical, intent(out) :: is_real
    real :: temp
    integer :: ios

    ! Attempt to read the input as a real number
    read(input, '(F10.0)', IOSTAT=ios) temp

    ! Set is_real to .true. if the input is a valid real number, otherwise .false.
    if (ios == 0) then
        is_real = .true.
    else
        is_real = .false.
    end if
end subroutine check_if_real