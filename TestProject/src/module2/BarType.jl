module BarType
import Module1: Foo

mutable struct Bar <: Foo
    data::Int
end

export Bar
end