call m.bat clean      >  ReBuild.log 2>&1
call m.bat build      >> ReBuild.log 2>&1
call m.bat pclint     >> ReBuild.log 2>&1
call m.bat pclint_all >> ReBuild.log 2>&1
