\l /home/marek/Development/kdb/timeseries/kdb/qunit/qunit.q
\l ./qunit/mymod.q
\l ./qunit/mymodTest.q

runTestsResult:.qunit.runTests `.mymodTest
runTestsResult

.qunit.generateReport[runTestsResult; `:./test_results.html]

\\