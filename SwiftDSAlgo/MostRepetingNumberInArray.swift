//
//  FindTheLargestNumberInArray.swift
//  SwiftDSAlgo
//
//  Created by Preeteesh Remalli on 28/09/22.
//

import Foundation

func repetingNumber(array:[Int]) -> Int{
    let dict = Dictionary(array.map{($0, 1)}, uniquingKeysWith: +)
    return dict.max(by: {$0.1 < $1.1})?.key ?? -1
}

