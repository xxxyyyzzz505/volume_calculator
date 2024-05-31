program sphere_volume
use volume_calculator
implicit none
    real :: radius, volume

    print *, "What's the radius of sphere?"
    read (*,*) radius

    do
        if (radius <= 0) then 
            ! print error message
            print *, "Invalid radius value! Please enter a positive value:"
            read (*,*) radius
        else
            call sphere_volume_calculator(radius, volume)
            print *, "The volume of this sphere is", volume
            print *, "Enter another radius:"
            read (*,*) radius
        end if 
    end do
end program sphere_volume

