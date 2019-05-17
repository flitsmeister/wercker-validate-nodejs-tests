test $(git grep "test.only(" -- '*.js' | wc -l) -eq 0
test $(git grep "experiment.only(" -- '*.js' | wc -l) -eq 0
test $(git grep "suite.only(" -- '*.js' | wc -l) -eq 0
test $(git grep "Mockery.enable(" -- '*.js' | wc -l) -eq `expr $(git grep "Mockery.disable\|Mockery.deregisterAll(" -- '*.js' | wc -l) / 2`