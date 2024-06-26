

# WB ----

test_that("This study has 125 data files", {
        expect_equal(nrow(mdt_files(1049, "wb")), 125)
})


# FAO ----

test_that("This study has 37 data files", {
        expect_equal(nrow(mdt_files(1357, "fao")), 37)
})

# UNHCR ----

test_that("Throws an error when repository doesn't provide list of files,
          it is from external repository", {
        expect_error(mdt_files(id = 1000, org = "unhcr"))
})

# IHSN ----

test_that("This study has 74 data files", {
        expect_lt(nrow(mdt_files(386, "ihsn")), 75)
})

test_that("This study doesn't provide data files", {
        expect_error(mdt_files(4243, "ihsn"))
})


# ILO ----


test_that("This study has 3 data files", {
        expect_equal(nrow(mdt_files(191, "ilo")), 3)
})
