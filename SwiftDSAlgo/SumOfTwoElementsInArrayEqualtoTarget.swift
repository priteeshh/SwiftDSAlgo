//
//  SumOfTwoElementsInArrayEqualtoTarget.swift
//  SwiftDSAlgo
//
//  Created by Preeteesh Remalli on 28/09/22.
//

import Foundation

//First Method

func findTheSumTarget(array: [Int], target: Int) -> (Int,Int){
    
    let sortedArray = array.sorted()
    var l = 0;
    var r = array.count - 1
    
    while(l < r){
        if sortedArray[l] + sortedArray[r] == target{
            return(l,r)
        }else if(sortedArray[l] + sortedArray[r] < target){
            l += 1
        }else{
            r -= 1
        }
    }
    return(-1,-1)
}

//Second Method


func findTheSumTarget2(array: [Int], target: Int) -> (Int,Int){
    
    var dict = [Int:Int]()
    
    for i in 0..<array.count{
        let temp = target - array[i]
        
        if dict.keys.contains(temp){
            return(dict[temp]!,i)
        }
        dict[array[i]] = i
    }
    print(dict)
    return (-1,-1)
    
}
