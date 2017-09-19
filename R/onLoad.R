# Create global haiku counter

.onLoad = function(libname, pkgname)
  assign(".haiku_counter", 0, envir = .GlobalEnv)

.onUnload = function(libname, pkgname)
  tryCatch(
    rm(.haiku_counter, envir = .GlobalEnv),
    error = function(e)
      message("Bye!"))
