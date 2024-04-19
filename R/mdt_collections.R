


#' List all collections
#' @description
#' Returns a list of all collections
#'
#'
#' @param org is a string of "wb", "fao" or "unhcr" organization.
#'
#' @return A data frame that includes all available collections
#' @export
#'
#' @examples
#' mdt_collections("fao")

mdt_collections <- function(org = "wb"){
        if(org == "wb"){
                server_url <- "https://microdata.worldbank.org/index.php/api/catalog/collections"
        } else if(org == "fao"){
                server_url <- "https://microdata.fao.org/index.php/api/catalog/collections"
        } else if(org == "unhcr"){
                server_url <- "https://microdata.unhcr.org/index.php/api/catalog/collections"
        } else if(org == "ihsn") {
                stop("At the moment, IHSN has no specific collections. Use `search_catalog()`")
        } else {stop("org should be 'wb', 'fao' or 'unhcr'")}
        collection <- request_api(server_url)
        collection <- collection$collections
        collection <- collection[,1:3]
        colnames(collection) <- c("repo_id", "name", "title")
        return(collection)
        }



