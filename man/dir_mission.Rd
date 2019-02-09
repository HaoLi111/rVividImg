\name{dir_mission}
\alias{dir_mission}
\title{
Handling a list of file in Certain Directry
}
\description{
From an existing folder a list of files can be read and used for creating new files in a new folder
}
\usage{
dir_mission(dirIn,dirOut,create = F,func =image_pdc_RGB)
}
\arguments{
  \item{dirIn}{
Input folder location
}
\item{dirOut}{
Output folder location
}
\item{create}{
whether to create the new folder at dirOut or not
}
\item{func}{
function to apply on each file
}
}
\details{
non-ASCII characters in the directory location string may lead to errors.
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
\code{\link{dir.create}}
}
\examples{

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~files }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~multiple }% __ONLY ONE__ keyword per line
