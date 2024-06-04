program volume_calculator_unit_test
    use volume_calculator
    use, intrinsic :: ieee_arithmetic
    implicit none
    real, parameter :: pi = 3.14159265358979323846 

    real (kind = 8):: result

    ! Test sphere_volume_calculator function
    ! Test when the entry is a positive number
    call sphere_volume_calculator(real(2, 8), result)
    if (result == (4.0 / 3.0) * pi * (real(2, 8) ** 3) ) then
        print *, "sphere_volume_calculator for positive entry test passed"
    else
        print *, "sphere_volume_calculator for positive entry test failed"
    end if
    
    ! Test when the entry is a negative number
    call sphere_volume_calculator(real(-2, 8), result)
    if (ieee_is_nan(result)) then
        print *, "sphere_volume_calculator for negative entry test passed"
    else
        print *, "sphere_volume_calculator for negative entry test failed"
    end if

    ! Test when the entry is 0
    call sphere_volume_calculator(real(0, 8), result)
    if (ieee_is_nan(result)) then
        print *, "sphere_volume_calculator for 0 entry test passed"
    else
        print *, "sphere_volume_calculator for 0 entry test failed"
    end if


end program volume_calculator_unit_test