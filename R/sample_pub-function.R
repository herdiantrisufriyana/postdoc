sample_pub <- function(data, lab){
    set.seed(seed)
    data |>
      slice(
        sample(
          seq(nrow(data))
          , 30
          , ifelse(nrow(data) >= 30, FALSE, TRUE)
        )
      ) |>
      mutate(aligned = "") |>
      write_csv(paste0("inst/extdata/publication_rating_form.", lab, ".csv"))
  }