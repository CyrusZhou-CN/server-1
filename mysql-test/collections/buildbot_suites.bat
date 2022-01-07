if "%MTR_PARALLEL%"=="" set /a MTR_PARALLEL=%NUMBER_OF_PROCESSORS%*3/2
perl mysql-test-run.pl --verbose-restart --force --suite-timeout=120 --max-test-fail=10 --retry=3  --suite=^
vcol,gcol,perfschema,^
main,^
innodb,^
plugins,^
mariabackup,^
roles,^
auth_gssapi,^
rocksdb
