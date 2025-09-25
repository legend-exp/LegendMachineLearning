# This file is a part of LegendMachineLearning.jl, licensed under the MIT License (MIT).

import Test
import Aqua
import LegendMachineLearning

Test.@testset "Package ambiguities" begin
    Test.@test isempty(Test.detect_ambiguities(LegendMachineLearning))
end # testset

Test.@testset "Aqua tests" begin
    Aqua.test_all(
        LegendMachineLearning,
        ambiguities = true
    )
end # testset
