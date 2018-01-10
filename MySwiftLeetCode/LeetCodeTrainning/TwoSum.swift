//
//  TwoSum.swift
//  SwiftStudy
//
//  Created by wangyan on 2017/7/18.
//  Copyright © 2017年 chinaamc. All rights reserved.
//

import Cocoa

class TwoSum: NSObject {

//    func twoSum(_ nums: [Int], _ target: Int) -> [Int] { // O(n2)
//        
//        for i in 0..<nums.count {
//            
//            for j in i+1..<nums.count {
//                
//                if nums[i] + nums[j] == target {
//                    
//                    return [i, j]
//                }
//            }
//        }
//        
//        return [-1, -1]
//    }
    
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] { //O(n)
        
        var dic = [Int: Int]()
        
        for (index, value) in  nums.enumerated() {
            
            guard let pairIndex = dic[target - value] else {
                
                dic[value] = index;
                continue
            }
            
            return [pairIndex, index]
        }
        
        return [-1, -1]
    }
}


