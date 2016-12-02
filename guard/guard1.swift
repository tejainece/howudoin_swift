func div(_ numerator: Int32!, _ demonimator: Int32!) -> Int32 {
    guard numerator != nil else {
        return 0;
    }

    guard demonimator != nil else {
        return 0;
    }

    guard demonimator != 0 else {
        return 0;
    }


    return numerator/demonimator;
}

print(div(nil, 5))
print(div(nil, 5))
print(div(5, 0))
print(div(10, 5))
