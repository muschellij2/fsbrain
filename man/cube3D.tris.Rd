% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/vis_volume.R
\name{cube3D.tris}
\alias{cube3D.tris}
\title{Return triangles for a 3D cube or cuboid.}
\usage{
cube3D.tris(
  xmin = -0.5,
  xmax = 0.5,
  ymin = -0.5,
  ymax = 0.5,
  zmin = -0.5,
  zmax = 0.5,
  center = NULL,
  edge_length = 1
)
}
\arguments{
\item{xmin}{numeric, minimal x coordinate}

\item{xmax}{numeric, maximal x coordinate}

\item{ymin}{numeric, minimal y coordinate}

\item{ymax}{numeric, maximal y coordinate}

\item{zmin}{numeric, minimal z coordinate}

\item{zmax}{numeric, maximal z coordinate}

\item{center}{numeric vector of length 3 or NULL, coordinates where to center a cube with the edge length defined in parameter `edge_length`. If this is not `NULL`, the parameters `xmin`, `xmax`, ... will be ignored, and their values will be computed for a cube based on the `center` and `edge_length`. Note that you can only create cubes using `center` and `edge_length`, while the min/max methods allows the construction of cuboids.}

\item{edge_length}{numeric, the edge length of the cube. Only used if parameter `center` is used, ignored otherwise.}
}
\value{
numerical matrix with 36 rows and 3 columns, the 3D coordinates. Each row encodes a point (the x, y, and z coordinates), and 3 consecutive rows encode a triangle.
}
\description{
Each row of the returned matrix encodes a point (the x, y, and z coordinates), and 3 consecutive rows encode a triangle. Obvisouly, a point will occur several times (as part of several triangles). The result can be passed to \code{\link{triangles3d}} to render a 3D box. The defaults for the parameters will create a cube with edge length 1 centered at (0, 0, 0).
}
\examples{
   # Create a cube with edge length 2, centered at (3,4,5):
   cube_coords = cube3D.tris(center=c(3,4,5), edge_length=2.0);
   # Create the same cube using the min/max method:
   cube_coords = cube3D.tris(xmin=2, xmax=4, ymin=3, ymax=5, zmin=4, zmax=6);
   # Create a cuboid:
   cuboid_coords = cube3D.tris(xmin=2, xmax=4, ymin=3, ymax=9, zmin=4, zmax=5);
   # To render the cuboid:
   #rgl::triangles3d(cuboid_coords, col="red");

}
