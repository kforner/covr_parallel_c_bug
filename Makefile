PKG=covrcparbug

all: covr_normal covr_parallel

covr_parallel:
	COVR_PARALLEL=TRUE R -q -e 'covr::package_coverage("$(PKG)")'
 
 covr_normal:
	COVR_PARALLEL=FALSE R -q -e 'covr::package_coverage("$(PKG)")'