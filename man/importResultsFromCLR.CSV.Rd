% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/imports.R
\name{importResultsFromCLR.CSV}
\alias{importResultsFromCLR.CSV}
\title{Importation of clustering results from a folder containing CVS files}
\usage{
importResultsFromCLR.CSV(path, prob.th = 0.8, th.min_cells = 0,
  assignments = NULL)
}
\arguments{
\item{path}{a character specify the path of the CVS CLR files}

\item{prob.th}{a numeric specifying the probability threshold to use for considering considering the cluster of each each cells}

\item{th.min_cells}{a numeric specifying the minimum number of cell in a cluster of a sample to take its phenotype in account}

\item{assignments}{a data.frame containing all samples names (in rownames) and columns providing contextual associations like "bc" (biological conditions), "tp" (biological conditions) and "ind" (individuals)}
}
\value{
a S4 object of class 'Results'
}
\description{
The 'importResultsFromCLR.CSV()' function imports cell clustering results from CLR files contained in a specified folder.
CLR files must be in CSV format ().
This function imports only the cluster abundance.
}
\details{
This function returns a 'Results' object with only cluster abundance information (no phenotype). 
The name of each file will be used as the name of the sample.

For each cell, the selected cluster will be one having the greater probability higher than the 'prob.th' parameter.
}
