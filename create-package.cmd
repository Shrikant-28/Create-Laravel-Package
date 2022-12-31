@echo off
echo Please input in lowercase.
set /p package_name=Enter package name: 
echo Generating %package_name% package

color 0a

mkdir %package_name%
cd %package_name%

echo # %package_name% > README.md

echo Installing comoser
call composer init --name="shrikant/%package_name%" --author="Shrikant Dharam <dharamshrikant6@email.com>"

echo Creating Controller folder structure
cd src
mkdir Controllers
cd Controllers

echo Write %package_name% controller
echo. > %package_name%Controller.php
echo "<?php namespace Collab\%package_name%\src\Controllers; >> %package_name%Controller.php

echo Creating Base Controller 
mkdir Base && cd Base
echo. > %package_name%BaseController.php
echo "<?php namespace Collab\%package_name%\src\Controllers\Base; >> %package_name%BaseController.php

echo Creating Service Controller 
cd ..
mkdir Controller_Services && cd Controller_Services 
echo. > %package_name%ServiceController.php
echo "<?php namespace Collab\%package_name%\src\Controllers\Controller_Services;" >> %package_name%ServiceController.php

cd ../..
mkdir database\migrations

mkdir public\css
mkdir public\js
mkdir public\images
mkdir resources\views
mkdir routes && cd routes
echo. > web.php

echo Package structure for %package_name% created successfully.

cd ../..
code .


