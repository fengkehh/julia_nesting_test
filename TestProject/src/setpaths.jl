if !isdefined(Main, :__setpaths__)
  global const __setpaths__ = true

  function getpaths(root::String=@__DIR__)
    return collect(Base.Filesystem.abspath(stuff[1]) for stuff in Base.Filesystem.walkdir(root))
  end


  function setpaths(paths::Vector{String})
    for path in paths
      push!(LOAD_PATH, path)
    end
  end

  paths = getpaths("TestProject\\src")
  setpaths(paths)
end
