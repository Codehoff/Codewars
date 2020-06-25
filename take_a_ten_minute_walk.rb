def is_valid_walk(walk)
    walk.length == 10 && walk.count("s") == walk.count("n") && walk.count("e") == walk.count("w")
end