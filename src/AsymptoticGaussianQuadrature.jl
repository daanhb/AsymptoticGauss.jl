module AsymptoticGaussianQuadrature

using FastGaussQuadrature
using SpecialFunctions
using Roots
using LinearAlgebra

import FastGaussQuadrature: approx_besselroots

include("asy_laguerre.jl")

include("gauss/gausslaguerre.jl")
include("gauss/gaussfreud.jl")
include("gauss/gaussjacobi.jl")


export asy_gausslaguerre
export asy_gaussfreud
export asy_gaussjacobi

end # module
