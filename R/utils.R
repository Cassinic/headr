#' Read header and footer Excel file
#'
#' This function reads headers and footers from a spreadsheet, either an Excel file or csv file.
#'
#'
#'
#' @details Table_layout is based upon the complex_layout. However, unlike complex_layout, the table layout consists of eight rows for headers, titles, plot, notes, and footnotes.
#' The fourth row and sixth row are used to create space above and below the table.\cr
#' The heights of the rows in table_layout with `"free"` scales are 5%, 5%, 5%, 5%, 60%, 5%, 5%, and 10% of the area respectively.\cr
#' In `table_layout` with `"fixed"` scales, row heights are specified in inches for annotations, while the remaining space is dedicated to the plot.
#' This ensures consistent spacing across outputs, with the plot occupying the central area.\cr
#' Please note that as output space is reduced, annotations retain their space which makes the plot appear smaller.
#'
#' For an example, see `vignette("table_example", package = "plotation")`.
#'
#' @rdname read_header
#' @seealso [read_header]
#' @examples
#' table_layout()
#'
#' # (to use |> version 4.1.0 of R is required, for lower versions we recommend %>% from magrittr)
#' library(magrittr)
#'
#' library(flextable)
#'
#' ft <- flextable::flextable(head(mtcars[ 1:10]))
#' tbl_grob <- flextable::gen_grob(
#'   flextable::flextable(head(mtcars[ 1:10])),
#'   fit = "auto",
#'   scaling = "full"
#' )
#'
#'
#'
#' @export read_footer
read_footer <- function(
    filename = filename
    ) {
  if (!file.exists(filename)) stop("Input header_footer file does not exist! Check the filename and/or pathname and try again. \n", filename)
  readxl::read_xls(filename)
}
