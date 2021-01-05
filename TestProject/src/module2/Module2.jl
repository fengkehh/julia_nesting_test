module Module2
import Module1: Foo, module1_func

struct Bar <: Foo
    data::Int
end


function module2_func(x::T where T <: Foo)
    module1_func(x)
    return x.data + 2
end

export Bar, module2_func
end
