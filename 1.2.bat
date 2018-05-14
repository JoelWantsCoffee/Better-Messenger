@echo off
REM This is the Joel Universal V1.1
set ves=1.2
set nves=1.3
set loc=%cd%
REM CHANGE LOG
echo Change log:
echo 1. Bug Fixes
echo 2. More games
echo 3. the stand alone borte in other works
echo 4. MERRY CHRISTMAS
echo ~~Fun Fact: The most suicides occur during christmas :D
pause
cls
:netuse
net use K: "\\10.24.68.30\Public\2016\10 Digital Art\_Student Folders\_DAR101S\Jai Stocco\1"
K:
cd 1
cd new
cls
if exist %nves%.bat (
ROBOCOPY "K:\1\new\lat" "%loc%" /s
ren %loc%\%nves%.bat "Joel Universal V%nves%.bat"
cls
echo There is a new version of better messenger available
echo it's called "Joel Universal V%nves%.bat"
echo I will goto it now.
CALL :regi "%loc%\Joel Universal V%nves%.bat"
pause >nul
goto DEATH
cd..
)
cd..
goto regi
:regi
cls
>nul findstr "%computername%" regi.jff && goto vstart2
cls
echo Sorry, %username% we have found this to be an
echo un-autherized product. If you have bought this
echo product enter the security key found on the box.
echo it should look similar to this:
echo XXXX-XXXX-XXXX-XXXX
set /p testpass=Key: 
if "%testpass%"=="NAHH-MANJ-USTC-HILL" echo %computername% >> regi.jff
if "%testpass%"=="NAHH-MANJ-USTC-HILL" goto newuser
cls
echo Incorect, try again
goto TESTstart
:vstart
cls
echo                                           welcome to Joel's Universal Platform        FLOCK!
echo                                                Merry Chirstmas and holidays
echo                                    Fun Fact: The most suicides occur during christmas :D
echo 1) Games and Other projects
echo 2) Better Messenger V5.0
CHOICE /C 12 /N /M "1, 2"
IF ERRORLEVEL 2 goto welcome
IF ERRORLEVEL 1 goto other
:other
cls
echo                                               Random stuff m8
echo B) BACK
echo 1) Borte
echo 2) VladOS (Coming Soon)
echo 3) Song of the mamoth (Coming Soon)
echo 4) ADDICTION!
echo 5) Blackout
CHOICE /C B12345 /N /M "1, 2, 3, 4, 5"
IF ERRORLEVEL 6 goto vstart4
IF ERRORLEVEL 5 goto vstart5
IF ERRORLEVEL 4 goto vstart2
IF ERRORLEVEL 3 goto vstart2
IF ERRORLEVEL 2 goto vstart3
IF ERRORLEVEL 1 goto vstart
:vstart2
cls
set ba=0
Echo                                        Welcome, To continue you will need to sign in
echo                                                 Please enter your username
set /p user_name=Username: 
if "%user_name%"=="new" goto newuser
goto signin
:newuser
cls
Echo                                                         Sign Up
echo Please fill in the given questions.
set /p newusername=Username: 
set /p newpassword=Password (NOT SECURE!): 
echo %newusername%-%newpassword%>>LOGINFO.jff
set user_name=%newusername%
cls
goto vstart
:signin
set /p pass_word=Password: 
>nul findstr "%user_name%-%pass_word%" LOGINFO.jff && goto vstart
:idiot
cls
color f
echo                                                 YOU DARN IDIOT GET OFF
echo.
echo                                               you thought you could hack me
echo                                      well I suppose you're not known for your smarts
goto flash
:FLASH
color 4f
ping 1.1.1.1 -n 1 -w 200 > nul
color 0f
ping 1.1.1.1 -n 1 -w 200 > nul
goto flash
:welcome
cls
echo                                                      MESSENGER
set userg=%user_name%
cls
echo                                                      MESSENGER
echo                                             choose the server (chat room)
echo                                                 If you want default
echo                                                   Leave it blank
set /p cn= what server?: 
if exist msger%cn%.jff (
    goto tell
) else (
cls
echo                                                      MESSENGER
echo                                           That group doesn't exist yet!
echo                                               Choose a text colour
echo.
echo                                                    A - HACKER		
echo                                                    B - BLUE		
echo                                                    C - RED
echo                                                    D - PURPLE
echo                                                    E - YELLOW
echo                                                    F - WHITE

goto kysiwillkillyou

)
:tell
color F
echo %userg% is now on Server %cn%! > newari.jff
REM for /f %%a in (msger%cn%.jff) do set col=%%a
color %col:~0,1%
set /p col=<K:\1\msger%cn%.jff
set lat=0
set xmas=true
if "%col%"=="xmas" goto lol69420
color %col%
set xmas=false
:lol69420
cls
cls 
echo                                                      MESSENGER
echo.
echo                                                Welcome to messenger                       
echo                                               After sending a message
echo                                               press M to send another
echo                                       type /command to see a list of commnands
pause
cls
goto loop
:start
set /p Given_message=%userg%: 
if "%Given_message%"=="/borte" goto vstat
if "%Given_message%"=="/speakborte" goto speech
if "%Given_message%"=="/shutup" set ba=0
if "%Given_message%"=="/sendfile" goto sending
if "%Given_message%"=="/gmsg" goto gmsg
if "%Given_message%"=="/command" goto cmds
if "%Given_message%"=="/room" goto welcome
if "%Given_message%"=="/gift" goto gifts
if "%Given_message%"=="/online" goto onlines
call set Given_message=%%Given_message:shit=sh*t%%
call set Given_message=%%Given_message:fuck=f**k%%
call set Given_message=%%Given_message:bitch=female dog%%
call set Given_message=%%Given_message:cunt=c**t%%
call set Given_message=%%Given_message:crap=carp%%
call set Given_message=%%Given_message:dick=richard%%
call set Given_message=%%Given_message:what=waht%%
cd borte
if "%ba%"=="1" (for %%i in (%Given_message%) do echo %%i)>>%filename%.txt
cd..
@echo %userg%: %Given_message%>>msger%cn%.jff
@echo %user_name%>msgeru%cn%.jff	
REM for /f "tokens=* delims=" %%x in (msger%cn%.jff) do echo %%x
:loop 
@echo %user_name%>>msgeru%cn%.jff
cls 
echo                                                      MESSENGER
echo                                             Hold M to send another message 
powershell -nologo "& "Get-Content -Path K:\1\msger%cn%.jff -Tail 30"
REM for /f "tokens=* delims=" %%x in (msger%cn%.jff) do echo %%x



REM if exist newari.jff ERASE newari.jff
REM echo press any key to reload
REM pause >nul
:loopy
if "%xmas%"=="true" (
	if "%lat%"=="2" (
	color F
	set lat=0
	)
	if "%lat%"=="1" (
	color C
	set lat=2
	)
	if "%lat%"=="0" (
	color 2
	set lat=1
	)
	
)
K:
cd K:\1\
choice /c mc /t 1 /d c >nul 
set temp69=0
if "%errorlevel%"=="1" goto start
>nul findstr "%user_name%" K:\1\sending.jff && goto resiv
>nul findstr "%user_name%" K:\1\xsending.jff && goto giftr
>nul findstr "who" K:\1\online.jff && goto onliner
>nul findstr "%user_name%" K:\1\newari.jff && set temp69=1
if "%temp69%"=="0" goto newari
>nul findstr "%user_name%" msgeru%cn%.jff && goto loopy
goto loop
  
  

:sending
cls
echo who do you want to send it too?
set /p whouwant=Their username: 
echo place a file here press enter when you are done.
explorer K:\1\send
pause
echo %whouwant%>K:\1\sending.jff
goto loop
  
:resiv
cls
echo You have recived mail!
echo It will appear on your desktop
pause
ROBOCOPY "K:\1\send" "C:\users\%username%\desktop" /s
cd\
cd 1
RD /S /Q K:\1\send
mkdir K:\1\send
echo kys>sending.jff
cls
goto loop










:vstat
set ba=1
set chat=0
set fneed=15
K:
cd 1
mkdir borte
cd borte
:stat
cls
echo BORTE!
echo which borte do you want to talk to?
set /p filename=:
cls
:speech
cd borte
SET /A now=%RANDOM%%%5+1
echo %now%
REM Number of lines
Set _File=%filename%.txt
Set /a _Lines=0
set /a loop=0
set speak= 

:cw
if "%loop%"=="%now%" goto speak

set number=%RANDOM%
set /a number=%number%*(%_Lines%/32768)+1 

for /f "tokens=*" %%a in ('powershell -ex bypass -c "gc "K:\1\borte\%filename%.txt" | ? { $_ } | Get-Random"') do (
  set "word=%%a"
)

set /a loop=%loop%+1
set speak=%speak% %word%
rem echo %speak%
goto cw
:speak
cd..
@echo %filename%:%speak%>>msger%cn%.jff
goto loop










:kysiwillkillyou
CD\
cd 1
set /p lolmate=Choose a letter: 
REM LOL KYS
echo %lolmate%>msger%cn%.jff
goto tell

:newari
set /p newarinoob=<newari.jff
echo x=msgbox("%newarinoob%" ,0, "Hey, scrub lorde")>tmp.vbs
pushd %~dp0
start "" K:\1\tmp.vbs
echo %userg%>>K:\1\newari.jff
goto loopy

:cmds
cls
echo Here is a list of commands!
echo /borte ~ select a borte
echo /shutup ~ deselect all bortes
echo /speakborte ~ get the selected borte to speak
echo /sendfile ~ send a file to some srub
echo /room ~ change the chat room
echo /gmsg ~ send a global message
echo /gift ~ send a friendly christmas gift
echo /online ~ see anyone who's online! (aslongastheyarenttypingandhavefastinternet)
pause
cls
goto loop

:gmsg
cls
set /p rollo=Type a message to send: 
set Given_message=%rollo%
call set Given_message=%%Given_message:shit=sh*t%%
call set Given_message=%%Given_message:fuck=f**k%%
call set Given_message=%%Given_message:bitch=female dog%%
call set Given_message=%%Given_message:cunt=c**t%%
call set Given_message=%%Given_message:crap=carp%%
call set Given_message=%%Given_message:dick=richard%%
call set Given_message=%%Given_message:what=wot%%
set rollo=%Given_message%
echo %userg%: %rollo% > newari.jff
echo *%userg% said %rollo% in a global message*>>msger%cn%.jff
@echo %user_name%>msgeru%cn%.jff
cls
goto loop

:gifts
cls
echo Who do you want to gift?
set /p whouwant=Their username: 
echo You can now feel good about yourself :D
echo %whouwant%>K:\1\xsending.jff
goto loop

:giftr
cls
echo "               .__.      .==========.
echo "            .(\\//).  .-[ for you! ]
echo "           .(\\()//)./  '=========='
echo "       .----(\)\/(/)----.
echo "       |     ///\\\     |
echo "       |    ///||\\\    |
echo "       |   //`||||`\\   |
echo "       |      ||||      |
echo "       |      ||||      |
echo "       |      ||||      |
echo "       |      ||||      |
echo "       |      ||||      |
echo "       |      ||||      |
echo "       '------====------'
echo         SPAM SPACE TO OPEN!
set x=0
:xmasloop
set /a x+=1
pause > nul
color 2
set /a x+=1
pause > nul
color F
set /a x+=1
pause > nul
color 4	
if "%x%"=="15" goto xmasopen
goto xmasloop
:xmasopen
echo kysm8>K:\1\xsending.jff
start "" https://i.ytimg.com/vi/BUWNP7Ok0WM/hqdefault.jpg
goto loop

:onlines
cls
echo who ~ server>K:\1\online.jff
echo ---------------------->>K:\1\online.jff
ping 1.1.1.1 -n 1 -w 2000 > nul
powershell -nologo "& "Get-Content -Path K:\1\online.jff"
pause >nul
echo thnksm8>K:\1\online.jff
:onliner
>nul findstr "%user_name%" K:\1\online.jff && goto loop
echo %user_name% ~ %cn%>>K:\1\online.jff
goto loop

REM messenger ^
REM Borte v

@echo off
:vstart3
set chat=0
set fneed=15
cd\
K:
cd\
cd 1
cd borte
:statbo
cls
echo BORTE!
echo which borte do you want to talk to?
set /p filename=: 
if "%filename%"=="CHAT" goto chatbo
cls
:uspeekbo
if "%fneed%"=="0" goto deathbo
set text=%speak%
if "%chat%"=="0" set /p text=%username%: 
(for %%i in (%text%) do echo %%i)>>%filename%.txt
if "%text%"=="TREAT" goto foodbo
if "%chat%"=="0" set /a fneed=%fneed%-1

:speechbo
SET /A now=%RANDOM%%%5+1
echo %now%
REM Number of lines
Set _File=%filename%.txt
Set /a _Lines=0
set /a loop=0
set speak= 

:cwbo
if "%loop%"=="%now%" goto speakbo

set number=%RANDOM%
set /a number=%number%*(%_Lines%/32768)+1 

for /f "tokens=*" %%a in ('powershell -ex bypass -c "gc "K:\1\borte%filename%.txt" | ? { $_ } | Get-Random"') do (
  set "word=%%a"
)

set /a loop=%loop%+1
set speak=%speak% %word%
rem echo %speak%
goto cw
:speakbo
if "%chat%"=="0" echo SUSTENANCE: %fneed%
echo %filename%:%speak%
if "%chat%"=="1" goto chat_timebo
goto uspeekbo

:foodbo
(for %%i in (%speak%) do echo %%i)>>%filename%.txt
(for %%i in (%speak%) do echo %%i)>>%filename%.txt
set /a fneed=%fneed%+2
goto speechbo
:deathbo
echo YOU KILLED %filename%; YOU BASTARD.
echo his brain will be wiped and he will be resurected
echo SAD>%filename%.txt
pause >nul
goto vstat3
:chatbo
set chat=1
set /p borte1=AI one:
set /p borte2=AI two:
set filename=%borte1%
goto speechbo
:chat_timebo
set text=%speak%
if "%filename%"=="%borte2%" goto reallybo
if "%filename%"=="%borte1%" set filename=%borte2%
goto uspeekbo
:reallybo
set filename=%borte1%
goto uspeekbo

REM blackout v


@echo off
:vstart4
cd\
C:
cd %loc%
cls
echo "______ _            _      _____       _   "
echo "| ___ \ |          | |    |  _  |     | |  "
echo "| |_/ / | __ _  ___| | __ | | | |_   _| |_ "
echo "| ___ \ |/ _` |/ __| |/ / | | | | | | | __|"
echo "| |_/ / | (_| | (__|   <  \ \_/ / |_| | |_ "
echo "\____/|_|\__,_|\___|_|\_\  \___/ \__,_|\__|"
echo.
echo                   Press any key to start!
echo.
pause >nul
cls
set /a health=5
set /a lvl=1
set /a tim=1
set /a weapon=0
set /a foodr = 0
set /a sti=0
echo nothing> items.txt
cls
Echo                  Charper 1 - the beach
echo                   (press enter)
pause>nul
:0bl
cls
echo Health: %health%
echo Level: %lvl%
echo You awake lying down on an empty shoreline
echo out on the sea you can see a sinking ship
echo and inland you can a forest and a lake. Its
echo dark.
set /p act=(Sleep/get up): 
if "%act%"=="sleep" goto 1
if "%act%"=="get up" goto 2
goto 0bl
:1bl
cls
echo Health: %health%
echo Level: %lvl%
echo You drift of to sleep lying on a small patch
echo of grass you found below a sand dune. When 
echo wake up you feel rested! you gain 1 health!
set /a health=%health%+1
set /a tim=0
pause
:2bl
cls
echo Health: %health%
echo Level: %lvl%
if "%tim%"=="0" echo you begin to walk down the sunny beach
if "%tim%"=="0" echo when you realise overnight the boat
if "%tim%"=="0" echo has vannished and is now nowhere to
if "%tim%"=="0" echo be seen.
if "%tim%"=="1" echo you start to walk down the moonlit beach and
echo You Begin to feel hungry, you should probably
echo find some food.
if "%tim%"=="0" set /p act=(continue walking/go into the jungle): 
if "%tim%"=="0" goto abl
if "%tim%"=="1" set /p act=(continue walking/go into the jungle/swim to the boat): 
:abl
if "%act%"=="continue walking" goto 3bl
if "%act%"=="go into the jungle" goto 4bl
if "%act%"=="swim to the boat" goto 5bl
goto 2
:3bl
cls
echo Health: %health%
echo Level: %lvl%
echo as you continue down the beach you notice
echo several small crustaceans, but none will
echo be large enough to fill you for long...
echo it'll probably be too fast anyway.
if "%weapon%"=="0" set /p act=(dart at the crustaceans/give up): 
if "%weapon%"=="0" goto bbl
if "%weapon%"=="1" set /p act=(stab the crustaceans/give up): 
:bbl
if "%act%"=="dart at the crustaceans" goto 6bl
if "%act%"=="stab the crustaceans" goto 8bl
if "%act%"=="give up" goto 7bl
goto 3bl
:4bl
cls
echo Health: %health%
echo Level: %lvl%
echo As you enter the jungle, you notice
echo that there is a small stream running 
echo through by your feet. You also 
echo notice a few small rabbits darting 
echo about through the trees, just out
echo of view. There are also some sticks on
echo the ground.
if "%weapon%"=="0" set /p act=(dart at the rabbits/get the sticks/Go to the stream): 
if "%weapon%"=="0" goto cbl
if "%weapon%"=="1" set /p act=(stab the rabbits/get the sticks/Go to the stream): 
:cbl
if "%act%"=="dart at the rabbits" goto 9bl
if "%act%"=="stab the rabbits" goto 10bl
if "%act%"=="get the sticks" goto 11bl
if "%act%"=="Go to the stream" goto 12bl
goto 4bl
:5bl
cls
echo Health: %health%
echo Level: %lvl%
echo You set out towards the boat
echo but the waves are rough and
echo You soon run out of stamina however
echo shear force of will you manage
echo to make it to the hull and climb
echo abord. As you look around you but
echo are greeted by nothing but old 
echo broken rope sand moldy bread. You 
echo begin exit the vessile when you see
echo a rusting sword, you emidiely grab
echo it as you pick it up the entire
echo boat plunges into the sea and you
echo are forced to leap off and swim to
echo shore.
set /a weapon=1
set /p act=(continue walking/go into the jungle): 
if "%act%"=="continue walking" goto 3bl
if "%act%"=="go into the jungle" goto 4bl
goto 5bl
:6bl
cls
set N=0
cls
echo Health: %health%
echo Level: %lvl%
echo You grab at the crustaceans!
echo Warning Quicktime Approching!
pause
:6bbl
set /a letter=(25 * %random%) / 32768 + 1 
for /f "tokens=%letter%" %%l in ("A B C D E G H I J K L M N O P Q R S T U V W X Y Z") do set letter=%%l
CHOICE /C %letter%F /N /D F /T 1 /M "Press %letter%"
IF errorlevel 2 echo sadly you fail to catch any, they're
IF errorlevel 2 echo just to fast!
IF errorlevel 2 pause >nul
IF errorlevel 2 goto 6abl
set /a N=%N%+1
if NOT "%N%"=="3" goto 6bbl
if "%tim%"=="0" echo you grab the crustaceans cathing one,
if "%tim%"=="0" echo If it had been night there would be no
if "%tim%"=="0" echo way you could see them!
if "%tim%"=="0" echo 1xcrustaceans>>items.txt
if "%tim%"=="0" echo Seeing no other purpose of being on
if "%tim%"=="0" echo the beach you decide to head off into
if "%tim%"=="0" echo the jungle.
if "%tim%"=="0" pause
if "%tim%"=="1" echo you grab the crustaceuns missing them,
if "%tim%"=="1" echo all and scaring them all away. Its just
if "%tim%"=="1" echo too dark.
:6abl
if "%tim%"=="1" set /p act=(swim to the boat/go into the jungle): 
if "%act%"=="swim to the boat" goto 5bl
if "%act%"=="go into the jungle" goto 4bl
if "%tim%"=="0" goto 4bl
goto 6abl
:7bl
cls
echo Health: %health%
echo Level: %lvl%
echo you deicide its not worth your
echo time.
if "%tim%"=="1" and "%weapon%"=="1" echo You decide to head off into the jungle
if "%tim%"=="1" and "%weapon%"=="1" pause
if "%tim%"=="1" and "%weapon%"=="1" goto 4bl
if "%tim%"=="1" and "%weapon%"=="0" set /p act=(go into the jungle/swim to the boat)
if "%tim%"=="0" echo You decide to head off into the jungle
if "%tim%"=="0" pause
if "%tim%"=="0" goto 4bl
goto 7bl
:8bl
cls
echo Health: %health%
echo Level: %lvl%
echo You blindly stab into the water, catching
echo two on your rusty blade. Good shot!
echo You level up!
set /a lvl=%lvl%+1
echo 2xcrustaceans>>items.txt
echo Unfortunatly all the others, starled
echo by the shock swim away. Seeing no other
echo thing to do you head off into the dark
echo jungle.
pause
goto 4bl
:9bl
cls
cls
echo Health: %health%
echo Level: %lvl%
echo You creep sciently throught the undergrowth
echo towards an unsuspecting rabbit and pounce at
echo it. 
echo Warning Quicktime Approching!
pause
set N=0
:9bbl
set /a letter=(25 * %random%) / 32768 + 1 
for /f "tokens=%letter%" %%l in ("A B C D E G H I J K L M N O P Q R S T U V W X Y Z") do set letter=%%l
CHOICE /C %letter%F /N /D F /T 1 /M "Press %letter%"
IF errorlevel 2 echo unfortunetly it scratches you
IF errorlevel 2 echo you loose 1 health!
IF errorlevel 2 set /a health=%health%-1
IF errorlevel 2 pause >nul
IF errorlevel 2 goto 9abl
set /a N=%N%+1
if NOT "%N%"=="3" goto 9bbl
echo You beat the rabit to death!
echo 1xrabit>>items.txt
:9abl
>nul findstr "4xsticks" items.txt && echo seeing nothing else to do here
>nul findstr "4xsticks" items.txt && echo so you decide to go to the stream
>nul findstr "4xsticks" items.txt && pause
>nul findstr "4xsticks" items.txt && goto 12
set /p act=(get the sticks/Go to the stream): 
if "%act%"=="get the sticks" goto 11bl
if "%act%"=="Go to the stream" goto 12bl
goto 9bl
:10bl
cls
cls
echo Health: %health%
echo Level: %lvl%
echo You creep sciently throught the undergrowth
echo towards an unsuspecting rabbit!
echo Warning Quicktime Approching!
pause
set N=0
:10bbl
set /a letter=(25 * %random%) / 32768 + 1 
for /f "tokens=%letter%" %%l in ("A B C D E G H I J K L M N O P Q R S T U V W X Y Z") do set letter=%%l
CHOICE /C %letter%F /N /D F /T 1 /M "Press %letter%"
IF errorlevel 2 echo you miss and the rabbit
IF errorlevel 2 echo bounces away.
IF errorlevel 2 goto 10abl
echo You pounce at it. Catching it directly 
echo in the neck, killing it instantly.
echo 1xrabit>>items.txt
:10abl
>nul findstr "4xsticks" items.txt && echo seeing nothing else to do here
>nul findstr "4xsticks" items.txt && echo so you decide to go to the stream
>nul findstr "4xsticks" items.txt && pause
>nul findstr "4xsticks" items.txt && goto 12bl
set /p act=(get the sticks/Go to the stream): 
if "%act%"=="get the sticks" goto 11bl
if "%act%"=="Go to the stream" goto 12bl
goto 10bl
:11bl
cls
echo Health: %health%
echo Level: %lvl%
echo You bend down and collect some sticks,
echo these could be usefull for a fire!
echo 4xsticks>>items.txt
set /a sti=4
>nul findstr "1xrabit" items.txt && echo seeing nothing else to do you decide too
>nul findstr "1xrabit" items.txt && echo check out the stream.
>nul findstr "1xrabit" items.txt && pause
>nul findstr "1xrabit" items.txt && goto 12bl
if "%weapon%"=="0" set /p act=(dart at the rabbits/Go to the stream): 
if "%weapon%"=="1" set /p act=(stab the rabbits/Go to the stream): 
if "%act%"=="dart at the rabbits" goto 9bl
if "%act%"=="stab at the rabbits" goto 10bl
if "%act%"=="Go to the stream" goto 12bl
goto 11bl
:15bl
cls
echo Health: %health%
echo Level: %lvl%
echo You spin around to see a club weilding,
echo blood Stained, hairy man swing at you!
echo Warning Quicktime Approching!
pause
set N=0
:15bbl
set /a letter=(25 * %random%) / 32768 + 1 
for /f "tokens=%letter%" %%l in ("A B C D E G H I J K L M N O P Q R S T U V W X Y Z") do set letter=%%l
CHOICE /C %letter%F /N /D F /T 1 /M "Press %letter%"
IF errorlevel 2 echo he nailes you in the head.
IF errorlevel 2 echo you black out
IF errorlevel 2 pause >nul
IF errorlevel 2 goto 12abl
set /a N=%N%+1
if NOT "%N%"=="3" goto 15bbl
echo you get him square in the face
echo and with the cracking sound of
echo a breaking nose he goes up in
echo a puff of smoke.
pause >nul
goto 12abl
:12bl
cls
echo Health: %health%
echo Level: %lvl%
echo You bend down at the stream - it looks fresh
echo Do you wish to take a drink, as you are thirsty
choice /C YN /M "Drink Y, Dont N"
if ERRORLEVEL 2 goto 15bl
echo something hits you hard on the back of your head
echo you black out.
pause
cls
:12abl
echo End of chapter 1
pause
goto dsadbl
:chapter 2bl
cls 
echo      Chapter 2 - the cave
echo          (press enter)
pause >nul
:13bl
cls
echo Health: %health%
echo Level: %lvl%
echo you awake hanging by your legs in cave,
echo it appears to be night outside.
if "%weapon%"=="1" echo luckery you still have your sword and
>nul findstr "1xrabbt" items.txt && echo you food is on you.
>nul findstr "1xrabbt" items.txt && goto fbl
>nul findstr "2xcrustaceans" items.txt && echo you food is on you.
>nul findstr "2xcrustaceans" items.txt && goto fbl
>nul findstr "1xcrustaceans" items.txt && echo you food is on you.
>nul findstr "1xcrustaceans" items.txt && goto fbl
:fbl
>nul findstr "4xsticks" items.txt && echo your sticks are still here aswell.
if "%weapon%"=="1" set /p act=(yell/cut yourself down): 
if "%weapon%"=="0" set /p act=(yell/try to get down):
if "%act%"=="yell" goto 14bl
if "%act%"=="cut yourself down" goto 15bl
if "%act%"=="try to get down" goto 16bl
goto 13bl
:14bl
cls
echo Health: %health%
echo Level: %lvl%
echo you yell out as lound but 
echo get no reply in return




:dsadbl
pause>nul
cls
echo [insert product sale here]
echo For $2.99 the whole game could be yours!!!
echo (or just ask me to make more)
echo End of trial version.
pause>nul
cls
goto vstart


REM ADDICTION v

@echo off
:vstart5
cd\
K:
cd 1
cd GAME
set score=1
:ssad
echo 1) PLAY!
echo 2) Main menu
CHOICE /C 12 /N /M "1, 2, 3"
IF ERRORLEVEL 2 goto vstart
:statad
set /a scores=%score%-1
cls
echo ADDICTION 101
echo Score:%scores%
pause >nul
cls
set N=0
:blahad
set /a letter=(25 * %random%) / 32768 + 1 
for /f "tokens=%letter%" %%l in ("A B C D E G H I J K L M N O P Q R S T U V W X Y Z") do set letter=%%l
CHOICE /C %letter%F /N /D F /T 1 /M "Press %letter%"
IF errorlevel 2 goto statyad
set /a N=%N%+1
if "%N%"=="%score%" goto blahahad
goto blahad
:blahahad
@echo off &setlocal
set /a count=0
for /f "tokens=1delims=:" %%i in ('findstr /n "^" "file.txt"') do set /a count=%%i
set /a rd=%random%%%count
if %rd% equ 0 (set "skip=") else set "skip=skip=%rd%"
set "found="
for /f "%skip%tokens=1*delims=:" %%i in ('findstr /n "^" "file.txt"') do if not defined found set "found=%%i"&set "var=%%j"
echo.%var%
endlocal
set /a score=%score%+1
pause >nul
goto statad
:statyad
echo You FAILED #REKT
echo Your score was %scores%
pause >nul
pause
set score=1
goto vstart5
 












:DEATH

