!
!	transformation from GEI to GSE coordinates
!
!	time(1)=yyyyddd		year (yyyy) and day-of-year (ddd)
!	time(2)=msec		miliseconds of day in UT
!	coordinates x_in and x_out are Cartesian and real*8
!
	subroutine gei_to_gse_d (itime,x_in,x_out)
			implicit none
!
	real*8 x_in(3),x_out(3)
	integer*4 itime(2)
!
	call t2_d(itime,x_in,x_out,1)
!
	return
	end
