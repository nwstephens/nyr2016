############################################################
### Significance analysis of microarrays
############################################################

datadir <- '~/nyr-2016/gadgets'
source(file.path(datadir, 'samr_gadget.R'))

### Model
dat <- readRDS(file.path(datadir, 'normave.rds'))
modelout <- runmodel(dat)

### Plot
delta = 0.4
samr.plot(modelout, 0.4)

### Other effects
dat$y <- rep(1:2, each = 4)
dat$y <- rep(1:2, times = 4)
dat$y <- rep(1:2, each = 2, times = 2)


############################################################
### Data
############################################################

datasource <- 'http://finmath.stanford.edu/~tibs/tusher/normave.txt'
download.file(datasource, file.path(datadir, 'normave.txt'))
colnams <- c('genenames', 'geneid', 'U1A', 'U1B', 'I1A', 'I1B', 'U2A', 'U2B', 'I2A', 'I2B')
rawdat <- read.table(file.path(datadir, 'normave.txt'), col.names = colnams)
dat <- list(
  x = as.matrix(rawdat[, 3:10]),
  y = rep(1:2, each = 4),
  genenames = rawdat$genames,
  geneid = rawdat$geneid,
  logged2 = TRUE
)
saveRDS(dat, file.path(datadir, 'normave.rds'))
