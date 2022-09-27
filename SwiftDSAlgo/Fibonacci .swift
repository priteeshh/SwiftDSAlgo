//
//  Fibonacci .swift
//  SwiftDSAlgo
//
//  Created by Preeteesh Remalli on 28/09/22.
//

import Foundation
func printFibonacciSeries(value: Int) -> [Int]{
    var a = 0
    var b = 1
    var result = [0,1]
    
    for _ in 2...value{
        let temp = a + b
        a = b
        b = temp
        result.append(b)
    }
    return result
}
