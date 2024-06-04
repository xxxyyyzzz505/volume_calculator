module volume_calculator  
implicit none 
   real, parameter, private :: pi = 3.14159265358979323846 

contains      
    subroutine sphere_volume_calculator(radius, volume)          
        real (kind = 8) :: radius, volume, zero
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