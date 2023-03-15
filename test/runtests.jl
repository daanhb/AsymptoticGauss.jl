using Test
using SpecialFunctions
using PyPlot
using FastGaussQuadrature

include("onTheFlyGH.jl")

@testset "Gauss-Hermite" begin
    compare_gauss_hermite()
end

include("gausslaguerreTest.jl")

@testset "Gauss-Laguerre" begin
    include("GaussLaguerrePlots.jl")
end
