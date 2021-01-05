module Module4
import Module2: module2_func
import Module1: Foo

function module4_func(x::T where T <: Foo)
    return module2_func(x) + 2
end

export module4_func
end