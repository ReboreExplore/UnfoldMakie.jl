using UnfoldMakie
using Documenter

DocMeta.setdocmeta!(UnfoldMakie, :DocTestSetup, :(using UnfoldMakie); recursive=true)

makedocs(;
    modules=[UnfoldMakie],
    authors="Benedikt Ehinger",
    repo="https://github.com/unfoldtoolbox/UnfoldMakie.jl/blob/{commit}{path}#{line}",
    sitename="UnfoldMakie.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://unfoldtoolbox.github.io/UnfoldMakie.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
        "DesignMatrices" => "plot_design.md",
        "Results (ERP-Style)" => "plot_results.md",

    ],
)

deploydocs(;
    repo="github.com/unfoldtoolbox/UnfoldMakie.jl",
    devbranch="main",
)