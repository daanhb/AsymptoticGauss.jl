"""
`z, δ = sum_decreasing_terms(values)`

Compute the sum of all decreasing entries in the `values` vector. The output
`δ` equals the value of the first ignored entry (which is larger then the
previous one) or the last entry of the vector.
"""
function sum_decreasing_terms(values)
    z = values[1]
    i = 1
    while (i < length(values)) && (abs(values[i+1]) < abs(values[i]))
        i += 1
        z += values[i]
    end
    δ = abs(values[min(i+1,length(values))])
    z, δ
end


"""
`z, δ = sum_fixed_terms(values, Q)`

Compute the sum of the first `Q` elements in the `values` vector. The output
`δ` contains the first ignored entry of `values` or its last entry if `Q` equals
the vector length.
"""
function sum_fixed_terms(vals, Q)
    @assert Q <= length(vals)
    # for stability reasons we start from the end of the vector
    z = sum(vals[k] for k in min(Q,length(vals)):-1:1)
    δ = abs(vals[min(Q+1,length(vals))])
    z, δ
end
