library(testthat)
library(parallel)

if (Sys.getenv('COVR_PARALLEL', FALSE)) {
  job1 <- mcparallel(test_check('covrcparbug', 'rfoo'))
  job2 <- mcparallel(test_check('covrcparbug', 'rbar'))

  tests <- mccollect(list(job1, job2))
} else {
  tests <- test_check('covrcparbug')
}


