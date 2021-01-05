module Module1
include("../setpaths.jl")
abstract type Foo end

global const module1_global = 300
if isdefined(Main, :__mod1imp__)
    module1_global += 1
    println("mod1 rerun")
end
global const __mod1imp__ = true



function module1_func(x::T where T <: Foo)
    println(x.data + module1_global)
end


export module1_func, Foo, module1_global
end
