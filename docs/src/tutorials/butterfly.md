# [Butterfly Plot Visualization](@id bfp_vis)

Here we discuss butterfly plot visualization. 
Make sure you have looked into the [installation instructions](@ref install_instruct).

## Include used Modules
The following modules are necessary for following this tutorial:
```@example main
using UnfoldMakie
using Unfold
using CairoMakie
using DataFrames
```
Note that `DataFramesMeta` is also used here in order to be able to use `@subset` for testing (filtering).

## Data

We filter the data to make it more clearly represented:
```@example main
include("../../example_data.jl")
df, pos = example_data("TopoPlots.jl")
first(df, 3)
```

## Plot Butterfly Plots

The following code will plot the default butterfly plot
```@example main
plot_butterfly(df)
```

or if you provide the channel positions:

```@example main
plot_butterfly(df; positions=pos)
```

## Column Mappings for Butterfly Plots

Since butterfly plots use a `DataFrame` as input, the library needs to know the names of the columns used for plotting. You can set these mapping values by calling `plot_butterfly(...; mapping=(; :x=:time,))`, that is, by specifying a `NamedTuple` (note the `;` right after the opening parentheses).

While there are several default values that will be checked in that order if they exist in the `DataFrame`, a custom name may need to be chosen:


### x
Default is `(:x, :time)`.

### y
Default is `(:y, :estimate, :yhat)`.

### labels
Default is `(:labels, :label, :topoLabels, :sensor, :nothing)`


## Configurations for Butterfly Plots


Here we look into possible options for configuring the butterfly plot visualization using `(...; <name>=<value>, ...)`.
This is the list of unique configuration (key values):


- topoLegend (boolean)

### topoLegend (boolean)
Indicating whether the topo legend is displayed.
Default is `true`.


For more general options look into the `Plot Configuration` section of the documentation.


Since the configurations for line plots can be applied to butterfly plots as well.
[Here](@ref lp_vis) you can find the configurations for line plots, 

