# see readme file in tests/ for description of tests
# Claudia July 2015

tests = ["test_5taxon_readTopology.jl", "test_calculateExpCF.jl", "test_hasEdge.jl", "test_parameters.jl"]

anyerrors = false

for t in tests
    try
        include(t)
        println("\t\033[1m\033[32mPASSED\033[0m: $t")
    catch
        anyerrors = true
        println("\t\033[1m\033[31mFAILED\033[0m: $t")
    end
end

if anyerrors
    throw("Tests failed")
end