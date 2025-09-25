# This file is a part of LegendMachineLearning.jl, licensed under the MIT License (MIT).

using Test
using LegendMachineLearning
import Documenter

Documenter.DocMeta.setdocmeta!(
    LegendMachineLearning,
    :DocTestSetup,
    :(using LegendMachineLearning);
    recursive = true
)
Documenter.doctest(LegendMachineLearning)
