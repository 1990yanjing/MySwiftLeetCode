//
//  ContainerWithMostWater.swift
//  SwiftStudy
//
//  Created by wangyan on 2017/7/20.
//  Copyright © 2017年 wangyan. All rights reserved.
//

import Cocoa

class ContainerWithMostWater: NSObject {

    func maxArea(_ height: [Int]) -> Int {
        
        var maxA = 0, left = 0, right = height.count - 1
        
        while left < right {
            
            maxA = max(maxA, (right - left) * min(height[right], height[left]))
            
            if height[left] < height[right] {
                
                left += 1
            }else {
                
                right -= 1
            }
        }
        
        return maxA
    }
}
