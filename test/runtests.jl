# This file is a part of LegendMachineLearning.jl, licensed under the MIT License (MIT).

import Test

Test.@testset verbose=true "Package LegendMachineLearning" begin
    include("test_aqua.jl")
    include("test_some_ml_model.jl")
    include("test_docs.jl")
end # testset
