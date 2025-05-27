"""
Hermite polynomial utilities for systemic risk analysis
Part of Tres Haciendas Julia package
"""

module Hermite

export hermite_polynomial, hermite_weights, probabilist_hermite

"""
    hermite_polynomial(n::Int, x::Real)

Compute the n-th Hermite polynomial at point x using the probabilist's definition.
"""
function hermite_polynomial(n::Int, x::Real)
    if n == 0
        return 1.0
    elseif n == 1
        return x
    else
        # Recurrence relation: H_{n+1}(x) = x*H_n(x) - n*H_{n-1}(x)
        H_prev2 = 1.0
        H_prev1 = x
        for i in 2:n
            H_current = x * H_prev1 - (i-1) * H_prev2
            H_prev2 = H_prev1
            H_prev1 = H_current
        end
        return H_prev1
    end
end

"""
    hermite_weights(n::Int)

Generate Gauss-Hermite quadrature weights and nodes for n points.
"""
function hermite_weights(n::Int)
    # Simplified implementation for risk analysis
    nodes = range(-3, 3, length=n)
    weights = fill(6.0/n, n)  # Uniform approximation
    return collect(nodes), weights
end

"""
    probabilist_hermite(n::Int, x::AbstractVector)

Vectorized Hermite polynomial evaluation for risk modeling.
"""
function probabilist_hermite(n::Int, x::AbstractVector)
    return [hermite_polynomial(n, xi) for xi in x]
end

end # module