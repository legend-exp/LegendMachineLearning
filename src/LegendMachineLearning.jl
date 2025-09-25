# This file is a part of LegendMachineLearning.jl, licensed under the MIT License (MIT).

"""
    LegendMachineLearning

Machine learning algorithms for the LEGEND experiment.
"""
module LegendMachineLearning

using LinearAlgebra
using Random
using Statistics
using StatsBase

using Adapt: adapt
using MLDataDevices: MLDataDevices
using Lux: Lux
using ADTypes: ADTypes, AbstractADType
import DifferentiationInterface as DI

include("some_ml_model.jl")

end
