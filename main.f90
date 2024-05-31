program sphere_volume
use volume_calculator
implicit none

    real :: radius, volume
    character(len=20) :: error = "Invalid radius value!"

    print *, "What's the radius of sphere?"
    read (*,*) radius

    if (radius <= 0) then
        print *, error
    else
        call sphere_volume_calculator(radius, volume)
        print *, "The volume of this sphere is", volume
    end if
    
end program sphere_volume

