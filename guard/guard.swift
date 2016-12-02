func div(_ numerator: Int32, _ demonimator: Int32) -> Int32 {
    guard demonimator != 0 else {
        return 0;
    }
    return numerator/demonimator;
}

print(div(5, 0))
print(div(5, 2))
