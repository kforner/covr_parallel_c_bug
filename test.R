library(devtools)

load_all('covrcparbug')


test('covrcparbug')

library(covr)
library(withr)

options(covr.fix_parallel_mcexit = TRUE)
cov1 <- with_envvar(c(COVR_PARALLEL = TRUE), package_coverage('covrcparbug'))
res <- readLines('/tmp/covrcparbug_tests.log')

cov2 <- with_envvar(c(COVR_PARALLEL = FALSE), package_coverage('covrcparbug'))


