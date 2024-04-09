function _build(edgemodel::Type{MyGraphEdgeModel}, parts::Array{String,1}, id::Int64)::MyGraphEdgeModel
    
    # initialize -
    model = MyGraphEdgeModel(); # build an empty edge model
    
    # populate -
    model.id = id;
    model.source = parse(Int64, parts[1]);
    model.target = parse(Int64, parts[2]);
    model.cost = parse(Float64, parts[3]);
    model.lower_bound_capacity = parse(Float64, parts[4]);
    model.upper_bound_capacity = parse(Float64, parts[5]);

    # return -
    return model
end

# --- PUBLIC METHODS BELOW HERE ----------------------------------------------------------------------------------- #

"""
TODO: Add a comment to me. Describe what this function does, what it takes and what it returns.
"""
function build(model::Type{T}, edgemodels::Dict{Int64, MyGraphEdgeModel}) where T <: MyAbstractGraphModel

    # TODO: impl me!
    throw(ArgumentError("The build method is not implemented yet!"));
end
# --- PUBLIC METHODS ABOVE HERE ----------------------------------------------------------------------------------- #