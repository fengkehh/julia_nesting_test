include("setpaths.jl")
import Module1
import Module1
import Module2: Bar
import Module4: module4_func
import Module5: AbstractNestedFoo, nested_func, NestedBar, abstract_foo_func5, module5_global

println(module5_global)
x = Bar(3)
test = module4_func(x)

struct MyOwnNestedBar <: AbstractNestedFoo
    a::Bar
    b::NestedBar
end


function my_nested_bar_func(x::MyOwnNestedBar)
    println(module4_func(x.a))
    println(nested_func(x))
end


y = NestedBar(x)

z = MyOwnNestedBar(x, y)

my_nested_bar_func(z)

abstract_foo_func5(x)
