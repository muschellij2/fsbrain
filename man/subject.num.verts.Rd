% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fsdir_abstraction_subject.R
\name{subject.num.verts}
\alias{subject.num.verts}
\title{Get subjects vertex count.}
\usage{
subject.num.verts(
  subjects_dir,
  subject_id,
  surface = "white",
  hemi = "both",
  do_sum = FALSE
)
}
\arguments{
\item{subjects_dir}{string. The FreeSurfer SUBJECTS_DIR, i.e., a directory containing the data for all your subjects, each in a subdir named after the subject identifier.}

\item{subject_id}{string. The subject identifier}

\item{surface}{string. The surface name. E.g., "white", or "pial". Used to construct the name of the surface file to be loaded.}

\item{hemi}{string, one of 'lh', 'rh', or 'both'. The hemisphere name. Used to construct the names of the surface file to be loaded. For 'both', see the information on the return value.}

\item{do_sum}{logical, whether to return the sum of the vertex counts for lh and rh. Ignored unless 'hemi' is 'both'. If set, a single scalar will be returned.}
}
\value{
integer of hemilist of integers, the vertex count. If hemi is 'both' and 'do_sum' is `FALSE`, a hemilist of integers is returned. Otherwise, a single integer.
}
\description{
Determine vertex counts for the brain meshes of a subject.
}
