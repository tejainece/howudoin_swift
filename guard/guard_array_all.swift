enum DivError: Error {
    case NotSameSize
    case ZeroLength
    case DenominatorZero
}

func div(_ numerators: [Int32], _ denominators: [Int32]) throws -> [Int32] {
    guard numerators.count == denominators.count else {
        throw DivError.NotSameSize
    }

    guard numerators.count != 0 else {
        throw DivError.ZeroLength
    }

    guard denominators.first(where: {$0 == 0}) == nil else {
        throw DivError.DenominatorZero
    }

    var ret = Array<Int32>(repeating: 0, count: numerators.count)

    for i in 0..<numerators.count {
        ret[i] = numerators[i]/denominators[i]
    }

    return ret
}

print(try div([4, 6, 8, 10], [2, 3, 4, 10]))

do {
    print(try div([4, 6, 8, 10], [2, 3, 4, 0]))
} catch let error as DivError {
    print(error)
}
