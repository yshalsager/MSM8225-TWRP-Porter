mode con:cols=120 lines=35
@echo off
title Qualcomm TWRP Porter v0.2
color 0A
echo.
echo            # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
echo            #                                                                                             #
echo            #                                                                                             #
echo            #                                  Qualcomm TWRP Porter v0.2                                  #
echo            #                                                                                             #
echo            #                                        by yshalsager                                        #
echo            #                                                                                             #
echo            #                                                                                             #
echo            # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
echo.
echo.
pause
if exist out\ported_TWRP.img del out\ported_TWRP.img && del out\ramdisk-new.cpio.gz
goto menu

:menu
cls
echo            # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
echo            #                                                                                             #
echo            #                                                                                             #
echo            #                                  Qualcomm TWRP Porter v0.2                                  #
echo            #                                                                                             #
echo            #                                        by yshalsager                                        #
echo            #                                                                                             #
echo            #                                                                                             #
echo            # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
echo.
echo.                                    ================ MENU ================= 
echo                          Place recovery image which you want to port in "base" folder
echo                                     1. Port to msm8225 and msm8225q
echo.
set /p choice=  Choose your option: 
if '%choice%'=='1' goto msm8225

_________________________________________________________________________________

:msm8225
cls
echo            # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
echo            #                                                                                             #
echo            #                                                                                             #
echo            #                                  Qualcomm TWRP Porter v0.2                                  #
echo            #                                                                                             #
echo            #                                        by yshalsager                                        #
echo            #                                                                                             #
echo            #                                                                                             #
echo            # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
echo.
echo.                                    ========= Choose your device ======== 
echo                                     1. Lenovo A706 (a706)
echo                                     2. Lenovo A760 (a760)
echo                                     3. Nokia X (normandyx)
echo                                     4. Nokia XL (normandyxl)
echo                                     5. Innos/DNS i6 (jsrd9)
echo                                     6. Huawei y300 (y300)
echo                                     7. Samsung I8852 (delos3geur)
echo                                     8. Samsung I8262 (arubaslim)
echo                                     b. Go back
echo.
set /p choice=  Choose your option:
if '%choice%'=='1' goto a706
if '%choice%'=='2' goto a760
if '%choice%'=='3' goto normandyx
if '%choice%'=='4' goto normandyxl
if '%choice%'=='5' goto jsrd9
if '%choice%'=='6' goto y300
if '%choice%'=='7' goto delos3geur 
if '%choice%'=='8' goto arubaslim
if '%choice%'=='b' goto menu
_________________________________________________________________________________

:a706
cd base && rename *.img TWRP.img
cd.. && call unpackimg.bat base/TWRP.img
echo "Porting...."
copy /Y devices\msm8225\a706\TWRP.img-zImage split_img\TWRP.img-zImage
copy /Y devices\msm8225\a706\ramdisk\* ramdisk
copy /Y devices\msm8225\a706\ramdisk\etc ramdisk\etc
call repackimg.bat
move /Y image-new.img out\ported_TWRP.img && move /Y ramdisk-new.cpio.gz out\ramdisk-new.cpio.gz
call cleanup.bat
echo "Finsihed !"
Pause
goto menu
_________________________________________________________________________________

:a760
cd base && rename *.img TWRP.img
cd.. && call unpackimg.bat base/TWRP.img
echo "Porting...."
copy /Y devices\msm8225\a760\TWRP.img-zImage split_img\TWRP.img-zImage
copy /Y devices\msm8225\a760\ramdisk\* ramdisk
copy /Y devices\msm8225\a760\ramdisk\etc ramdisk\etc
call repackimg.bat
move /Y image-new.img out\ported_TWRP.img && move /Y ramdisk-new.cpio.gz out\ramdisk-new.cpio.gz
call cleanup.bat
echo "Finsihed !"
Pause
goto menu
_________________________________________________________________________________

:normandyx
cd base && rename *.img TWRP.img
cd.. && call unpackimg.bat base/TWRP.img
echo "Porting...."
copy /Y devices\msm8225\normandyx\TWRP.img-zImage split_img\TWRP.img-zImage
copy /Y devices\msm8225\normandyx\ramdisk\* ramdisk
copy /Y devices\msm8225\normandyx\ramdisk\etc ramdisk\etc
call repackimg.bat
move /Y image-new.img out\ported_TWRP.img && move /Y ramdisk-new.cpio.gz out\ramdisk-new.cpio.gz
call cleanup.bat
echo "Finsihed !"
Pause
goto menu
_________________________________________________________________________________

:normandyxl
cd base && rename *.img TWRP.img
cd.. && call unpackimg.bat base/TWRP.img
echo "Porting...."
copy /Y devices\msm8225\normandyxl\TWRP.img-zImage split_img\TWRP.img-zImage
copy /Y devices\msm8225\normandyxl\ramdisk\* ramdisk
copy /Y devices\msm8225\normandyxl\ramdisk\etc ramdisk\etc
call repackimg.bat
move /Y image-new.img out\ported_TWRP.img && move /Y ramdisk-new.cpio.gz out\ramdisk-new.cpio.gz
call cleanup.bat
echo "Finsihed !"
Pause
goto Explore
_________________________________________________________________________________

:jsrd9
cd base && rename *.img TWRP.img
cd.. && call unpackimg.bat base/TWRP.img
echo "Porting...."
copy /Y devices\msm8225\jsrd9\TWRP.img-zImage split_img\TWRP.img-zImage
copy /Y devices\msm8225\jsrd9\ramdisk\* ramdisk
copy /Y devices\msm8225\jsrd9\ramdisk\etc ramdisk\etc
call repackimg.bat
move /Y image-new.img out\ported_TWRP.img && move /Y ramdisk-new.cpio.gz out\ramdisk-new.cpio.gz
call cleanup.bat
echo "Finsihed !"
Pause
goto menu
_________________________________________________________________________________

:y300
cd base && rename *.img TWRP.img
cd.. && call unpackimg.bat base/TWRP.img
echo "Porting...."
copy /Y devices\msm8225\y300\TWRP.img-zImage split_img\TWRP.img-zImage
copy /Y devices\msm8225\y300\ramdisk\* ramdisk
copy /Y devices\msm8225\y300\ramdisk\etc ramdisk\etc
call repackimg.bat
move /Y image-new.img out\ported_TWRP.img && move /Y ramdisk-new.cpio.gz out\ramdisk-new.cpio.gz
call cleanup.bat
echo "Finsihed !"
Pause
goto menu
_________________________________________________________________________________

:delos3geur
cd base && rename *.img TWRP.img
cd.. && call unpackimg.bat base/TWRP.img
echo "Porting...."
copy /Y devices\msm8225\delos3geur\TWRP.img-zImage split_img\TWRP.img-zImage
copy /Y devices\msm8225\delos3geur\ramdisk\* ramdisk
copy /Y devices\msm8225\delos3geur\ramdisk\etc ramdisk\etc
call repackimg.bat
move /Y image-new.img out\ported_TWRP.img && move /Y ramdisk-new.cpio.gz out\ramdisk-new.cpio.gz
call cleanup.bat
echo "Finsihed !"
Pause
goto menu
_________________________________________________________________________________

:arubaslim
cd base && rename *.img TWRP.img
cd.. && call unpackimg.bat base/TWRP.img
echo "Porting...."
copy /Y devices\msm8225\arubaslim\TWRP.img-zImage split_img\TWRP.img-zImage
copy /Y devices\msm8225\arubaslim\ramdisk\* ramdisk
copy /Y devices\msm8225\arubaslim\ramdisk\etc ramdisk\etc
call repackimg.bat
move /Y image-new.img out\ported_TWRP.img && move /Y ramdisk-new.cpio.gz out\ramdisk-new.cpio.gz
call cleanup.bat
echo "Finsihed !"
Pause
goto menu
_________________________________________________________________________________
:Explore
start out
goto menu