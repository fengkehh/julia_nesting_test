import BarType: Bar

Base.:(+)(x::Bar, y::Bar) = Bar(x.data + y.data)

function add!(x::Bar, y::Bar)::Bar
    x.data += y.data
    return x
end

Base.:(*)(x::Bar, y::Bar) = Bar(x.data * y.data)

function mul!(x::Bar, y::Bar)::Bar
    x.data *= y.data
    return x
end