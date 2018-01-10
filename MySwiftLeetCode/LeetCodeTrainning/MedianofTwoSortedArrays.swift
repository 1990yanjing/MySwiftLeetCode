//
//  MedianofTwoSortedArrays.swift
//  SwiftStudy
//
//  Created by wangyan on 2017/7/19.
//  Copyright © 2017年 wangyan. All rights reserved.
//

import Cocoa

class MedianofTwoSortedArrays: NSObject {

    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double { //实质是从两个有序数组中寻找第n大的数字
        
        let totalCount = nums1.count + nums2.count;
        
        var tmpArray = [Int]()
        
        var i = 0, j = 0, num = 0
        
        while num <= totalCount / 2 {
            
            if i < nums1.count && j < nums2.count {
                
                if nums1[i] < nums2[j] {
                    
                    tmpArray.append(nums1[i])
                    i += 1
                }else {
                    
                    tmpArray.append(nums2[j])
                    j += 1
                }
            }else if i < nums1.count {
                
                tmpArray.append(nums1[i])
                i += 1
            }else if j < nums2.count {
                
                tmpArray.append(nums2[j])
                j += 1
            }
            
            num += 1
        }
        
        if totalCount % 2 == 0 {
            
            return (Double(tmpArray.last!) + Double(tmpArray[tmpArray.count - 2])) / 2.0
        }else {
            
            return Double(tmpArray.last!)
        }
    }
}
