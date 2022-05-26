//
//  main.swift
//  GetAllObjectsFromAny
//
//  Created by Rostyslav Gress on 20.05.22.
//

import Foundation


let sourceArray = [1, [4, 3], 6, [5, [1, 0]]] as [Any]

print("Next results -> \(ArrayEnumerator.next(sourceArray))")
