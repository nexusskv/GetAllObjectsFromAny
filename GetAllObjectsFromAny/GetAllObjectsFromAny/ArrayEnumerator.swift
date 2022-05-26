//
//  ArrayEnumerator.swift
//  GetAllObjectsFromAny
//
//  Created by Rostyslav Gress on 26.05.22.
//

import Foundation


class ArrayEnumerator {
    
    static func next(_ array: [Any]) -> [Int] {
        var resultsArray = [Int]()
        
        for value in array {
            if let subarray = value as? [Any] {
                resultsArray = handleSubarray(subarray, results: resultsArray)
            } else {
                resultsArray = handleValue(value, results: resultsArray)
            }
        }
        
        return resultsArray
    }

    private static func handleSubarray(_ subarray: [Any], results: [Int]) -> [Int] {
        var resultsArray = results
        
        for subvalue in subarray {
            resultsArray = handleValue(subvalue, results: resultsArray)
        }
        
        return resultsArray
    }

    private static func handleValue(_ value: Any, results: [Int]) -> [Int] {
        var resultsArray = results
        
        if let value = value as? Int {
            resultsArray.append(value)
        } else if let value = value as? [Int] {
            resultsArray.append(contentsOf: value)
        }
        
        return resultsArray
    }
}
