cat_haiku = function() {

  haiku_path = system.file("haiku_data.rds", package = "haiku")
  haiku_data = readRDS(haiku_path)

  haiku_text = vapply(haiku_data, sample, character(1), size = 1)

  cat(paste(haiku_text, collapse = "\n"))
}

update_counter = function() {
  if (exists(".haiku_counter", envir = .GlobalEnv))
    assign(".haiku_counter", .haiku_counter + 1, envir = .GlobalEnv)
  else
    assign(".haiku_counter", 1, envir = .GlobalEnv)
}

deal_with_it = function() {
  Sys.sleep(1)
  one_by_one("\nNope. No haiku for you this time.\n\n", int = .075)
  Sys.sleep(2)
  one_by_one("D E A L   W I T H   I T", int = .2)
  Sys.sleep(1)
  assign(".haiku_counter", 1, envir = .GlobalEnv)
}

one_by_one = function(x, int = 0.075) {
  assertthat::is.string(x)
  x = unlist(strsplit(x, split = ""))
  for (i in seq_along(x)) {
    cat(x[i])
    Sys.sleep(int)
  }
}

