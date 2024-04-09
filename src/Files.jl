"""
    readedgesfile(filepath::String; comment::Char='#', 
        delim::Char=',') -> Dict{Int64,MyGraphEdgeModel}

The readedgesfile function reads a file with edge data and returns a dictionary of edges, 
where the key is the line number and the value is an instance of `MyGraphEdgeModel`.

### Arguments
- `filepath::String`: the path to the edge file that we need to read
- `comment::Char`: the character that indicates a comment line in the file
- `delim::Char`: the character that separates the fields in the file

### Returns
- a dictionary of edges, where the key is the line number and the value is an instance of `MyGraphEdgeModel`
"""
function readedgesfile(filepath::String; comment::Char='#', 
    delim::Char=',')::Dict{Int64,MyGraphEdgeModel}

    # initialize
    edges = Dict{Int64,MyGraphEdgeModel}()
    linecounter = 0;
    
    # main -
    open(filepath, "r") do file # open a stream to the file
        for line ∈ eachline(file) # process each line in a file, one at a time
            
            # check: do we have comments?
            if (contains(line, comment) == true) || (isempty(line) == true)
                continue; # skip this line, and move to the next one
            end
            
            # split the line around the delimiter -
            parts = split(line, delim) .|> String
            if (length(parts) != 3)
                push!(parts, "1.0"); # add a default weight, if we need to
            end

            # build the edge model -
            edges[linecounter] = _build(MyGraphEdgeModel, parts, linecounter);

            # update the line counter -
            linecounter += 1;
        end
    end

    # return -
    return edges;
end