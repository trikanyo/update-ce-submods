@echo off

:ceArmor

if exist ".\CombatExtendedArmors\" (	
	(cd ".\CombatExtendedArmors\" && git pull && cd ..)		
	goto ceGuns
)

echo.
set answer=N
set /P "answer=Do you want to install CombatExtended Armors from github: [Y/N (Default N)]: "
if /I "%answer%"=="Y" (
	(git clone https://github.com/CombatExtended-Continued/CombatExtendedArmors.git)
)

:ceGuns

if exist ".\CombatExtendedGuns\" (
	(cd ".\CombatExtendedGuns\" && git pull && cd ..)
	goto ceMelee
)

echo.
set answer=N
set /P "answer=Do you want to install CombatExtended Guns from github: [Y/N (Default N)]: "
if /I "%answer%"=="Y" (
	(git clone https://github.com/CombatExtended-Continued/CombatExtendedGuns.git)
)

:ceMelee

if exist ".\CombatExtendedMelee" (
	(cd ".\CombatExtendedMelee\" && git pull && cd ..)
	goto end
)

echo.
set answer=N
set /P "answer=Do you want to install CombatExtended Melee from github: [Y/N (Default N)]: "
if /I "%answer%"=="Y" (
	(git clone https://github.com/CombatExtended-Continued/CombatExtendedMelee.git)
)

:end
echo.
@pause
