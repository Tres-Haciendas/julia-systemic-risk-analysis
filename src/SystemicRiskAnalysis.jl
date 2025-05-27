module SystemicRiskAnalysis

using LinearAlgebra, Statistics, ThreadsX
using Base.Threads: @threads

# Include core modules
include("hermite.jl")
include("ridge_regression.jl")
include("systemic_risk.jl")
include("optimized_systemic_risk.jl")
include("tier1_complete_optimizations.jl")
include("tier2_optimizations_fixed.jl")
include("accuracy_first_optimization.jl")
include("truly_accurate_optimization.jl")
include("data_utils.jl")

# Export main functions
export RollingSystemicRisk,
       calculate_systemic_risk_rolling,
       calculate_systemic_risk_parallel,
       calculate_systemic_risk_fast,
       benchmark_approaches,
       prepare_data_for_fast_calculation,
       # Export optimized functions
       OptimizedRollingSystemicRisk,
       calculate_systemic_risk_optimized,
       calculate_systemic_risk_optimized_parallel,
       # Export Tier 1 complete optimizations
       RollingStats,
       Tier1OptimizedRidgeSolver,
       calculate_systemic_risk_tier1_complete,
       calculate_systemic_risk_tier1_complete_parallel,
       # Export Tier 2 optimizations
       AdvancedRidgeSolver,
       calculate_systemic_risk_tier2_fixed,
       calculate_systemic_risk_tier2_memory_optimized,
       # Export Accuracy-First World-Class optimizations
       AccuracyFirstWorkspace,
       calculate_systemic_risk_accuracy_first,
       calculate_systemic_risk_accuracy_first_parallel,
       calculate_systemic_risk_world_class,
       # Export Truly Accurate optimizations
       TrulyAccurateWorkspace,
       calculate_systemic_risk_truly_accurate,
       calculate_systemic_risk_truly_accurate_parallel,
       calculate_systemic_risk_guaranteed_accurate,
       # Export helper functions for compatibility
       py_fit_lnlm_jl,
       py_fit_lnlm_jl_batch

end # module