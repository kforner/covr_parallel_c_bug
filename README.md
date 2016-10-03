# covr_parallel_c_bug
reproducible example for non-covered c code when tests are executed in parallel

## usage

just type `make`

You should see this output:

For non parallel:
```
covrcparbug Coverage: 100.00%
R/rcode.R: 100.00%
src/ccode.c: 100.00%
```

For parallel:
```
covrcparbug Coverage: 62.50%
src/ccode.c: 0.00%
R/rcode.R: 100.00%
```

