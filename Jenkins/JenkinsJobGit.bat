@echo off

mkdir "%WORKSPACE%\Reports"

"C:\Users\admin\AppData\Roaming\npm\newman.cmd" run "%WORKSPACE%\Postman Collections\Booking_API.json" ^
-e "%WORKSPACE%\Environments\QA.postman_environment.json" ^
--reporters cli,htmlextra ^
--reporter-htmlextra-export "%WORKSPACE%\Reports\BookingReport.html"