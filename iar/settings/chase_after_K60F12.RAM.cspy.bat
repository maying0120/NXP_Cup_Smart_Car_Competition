@REM This batch file has been generated by the IAR Embedded Workbench
@REM C-SPY Debugger, as an aid to preparing a command line for running
@REM the cspybat command line utility using the appropriate settings.
@REM
@REM Note that this file is generated every time a new debug session
@REM is initialized, so you may want to move or rename the file before
@REM making changes.
@REM
@REM You can launch cspybat by typing the name of this batch file followed
@REM by the name of the debug file (usually an ELF/DWARF or UBROF file).
@REM
@REM Read about available command line parameters in the C-SPY Debugging
@REM Guide. Hints about additional command line parameters that may be
@REM useful in specific cases:
@REM   --download_only   Downloads a code image without starting a debug
@REM                     session afterwards.
@REM   --silent          Omits the sign-on message.
@REM   --timeout         Limits the maximum allowed execution time.
@REM 


"D:\IAR\common\bin\cspybat" "D:\IAR\arm\bin\armproc.dll" "D:\IAR\arm\bin\armjlink.dll"  %1 --plugin "D:\IAR\arm\bin\armbat.dll" --device_macro "D:\IAR\arm\config\debugger\Freescale\Kxx.dmac" --backend -B "--endian=little" "--cpu=Cortex-M4F" "--fpu=VFPv4" "-p" "D:\IAR\arm\CONFIG\debugger\Freescale\MK60FN1M0xxx12.ddf" "--semihosting" "--device=MK60FN1M0xxx12" "--drv_communication=USB0" "--jlink_speed=auto" "--jlink_initial_speed=32" "--jlink_reset_strategy=0,0" "--jlink_interface=SWD" "--drv_catch_exceptions=0x000" "--drv_swo_clock_setup=72000000,0,2000000" 


