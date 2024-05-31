module volume_calculator  
implicit none 
   real, parameter,private :: pi = 3.1415926536  

contains      
    subroutine sphere_volume_calculator(radius, volume)          
        real :: radius, volume, zero
        zero = 0.0 
        if (radius <= 0) then 
            volume = zero / zero  
            ! Return NaN
        else
            volume = (4.0 / 3.0) * pi * (radius ** 3)
        end if  
   end subroutine sphere_volume_calculator 

   !add other types of volume calculator in the future
    
end module volume_calculator

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

