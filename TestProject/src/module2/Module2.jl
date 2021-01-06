module Module2
import Module1: Foo, module1_func
import BarType: Bar
include("bar_ops.jl")


function module2_func(x::T where T <: Foo)
    module1_func(x)
    return x.data + 2
end

export Bar, module2_func, add!, mul!
end
