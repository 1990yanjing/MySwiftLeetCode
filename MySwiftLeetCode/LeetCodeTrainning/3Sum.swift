//
//  3Sum.swift
//  SwiftStudy
//
//  Created by wangyan on 2017/8/14.
//  Copyright © 2017年 chinaamc. All rights reserved.
//

import Cocoa

class _Sum: NSObject { 

    func threeSum(_ nums: [Int]) -> [[Int]] {
        
        var ret = [[Int]]()
        
        let sortedNums = nums.sorted()
        
        for (i, num1) in sortedNums.enumerated() {
            
            if i > 0 && sortedNums[i - 1] == sortedNums[i] {
                
                continue
            }
            
            var j = i + 1
            var k = sortedNums.count - 1
            let target = -num1
            
            while j < k {
                
                if sortedNums[j] + sortedNums[k] == target {
                    
                    ret.append([num1, sortedNums[j], sortedNums[k]])
                    j += 1
                    k -= 1
                    while j < k && sortedNums[j - 1] == sortedNums[j] { j += 1 }
                    while j < k && sortedNums[k + 1] == sortedNums[k] { k -= 1 }
                }else if sortedNums[j] + sortedNums[k] > target {
                    
                    k -= 1
                }else {
                    
                    j += 1
                }
            }
        }
        
        return ret
    }
}
