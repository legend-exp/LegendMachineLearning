# Use
#
#     DOCUMENTER_DEBUG=true julia --color=yes make.jl local [nonstrict] [fixdoctests]
#
# for local builds.

using Documenter
using LegendMachineLearning

# Doctest setup
DocMeta.setdocmeta!(
    LegendMachineLearning,
    :DocTestSetup,
    :(using LegendMachineLearning);
    recursive = true
)

makedocs(
    sitename = "LegendMachineLearning",
    modules = [LegendMachineLearning],
    format = Documenter.HTML(
        prettyurls = !("local" in ARGS),
        canonical = "https://legend-exp.github.io/LegendMachineLearning.jl/stable/"
    ),
    pages = [
        "Home" => "index.md",
        "API" => "api.md",
        "LICENSE" => "LICENSE.md"
    ],
    doctest = ("fixdoctests" in ARGS) ? :fix : true,
    linkcheck = !("nonstrict" in ARGS),
    warnonly = ("nonstrict" in ARGS)
)

deploydocs(
    repo = "github.com/legend-exp/LegendMachineLearning.jl.git",
    forcepush = true,
    push_preview = true
)
