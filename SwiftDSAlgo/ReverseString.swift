//
//  ReverseString.swift
//  SwiftDSAlgo
//
//  Created by Preeteesh Remalli on 28/09/22.
//

import Foundation

//Method 1
func reverseString(str: String) -> String{
    
    let charArray = Array(str)
    var revString = ""
    for ele in charArray{
        revString = String(ele)+revString
    }
    return revString
}

//Method 2
func reverseString2(str: String) -> String{
    return String(str.reversed())
}
