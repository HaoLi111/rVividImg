\name{image_smooth_avg4}
\alias{image_smooth_avg4}
\title{
Average Smoothing 4 Points
}
\description{
Smoothing the matrix by taking averages of every 2*2 adjacent grid pixels
}
\usage{
image_smooth_avg4(m)
}
\arguments{
  \item{m}{
The initial matrix used.
}
}
\details{
}
\value{
}
\references{
}
\author{
Hao Li
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
m1=matrix(runif(50*50),50,50)
layout(1:2,2)
image(m1)
m2=image_smooth_avg4(m1)
image(m2)
}
\keyword{ ~smooth }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~average }% __ONLY ONE__ keyword per line
