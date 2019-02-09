\name{image_pdc_RGB}
\alias{image_pdc_RGB}
\title{
Linear Psuedo Coloring for Greyscale Images
}
\description{
A greyscale tiff can be converted into  matrix with dimension of number of rows * number of columns. This function takes in a matrix and, according to the value on each position of the grid (pixels), color the image by controlling the RGB channels. Dark turns blue, middle goes green, and light turns to red. The output is a 3 level AP which can be written to file.
}
\usage{
image_pdc_RGB(m,lower=NULL,mew = NULL,upper = NULL)
}
\arguments{
  \item{m}{
The image data (in matrix form)
}
  \item{lower}{
  lower bound of the pixel being converted
  }
  \item{mew}{
  medium value of the pixels being converted
  }
  \item{mew}{
  upper value of the pixels being converted
  }
}
\details{
Typically used for bettering the identification of the greyscales images. It is ideal for finding patterns but would overly amplify the roughness of a smooth surface sometimes
}
\value{
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Hao Li
}
\note{
}
\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
image_pdc_RGB(matrix((1:20)/20,10))
}
% R documentation directory.
\keyword{ ~psuedo }
\keyword{ ~coloring }
\keyword{ ~contour }
