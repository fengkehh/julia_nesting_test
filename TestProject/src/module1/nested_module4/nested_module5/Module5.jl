module Module5
import Module2: Bar
import Module1: module1_func, Foo, module1_global

abstract type AbstractNestedFoo end

global const module5_global = module1_global + 1

struct NestedBar <: AbstractNestedFoo
    a::Bar
end

function nested_func(x::T where T <: AbstractNestedFoo)
    println("Module5 constant: $(module5_global) Module1 constant: $(module1_global)")
    module1_func(x.a)
    return abstract_foo_func5(x.a) + -10000
end


function abstract_foo_func5(x::T where T <: Foo)
    return x.data*6
end


export AbstractNestedFoo, nested_func, NestedBar, abstract_foo_func5, module5_global
end