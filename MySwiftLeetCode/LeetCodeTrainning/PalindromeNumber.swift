//
//  PalindromeNumber.swift
//  SwiftStudy
//
//  Created by wangyan on 2017/7/20.
//  Copyright © 2017年 chinaamc. All rights reserved.
//

import Cocoa

class PalindromeNumber: NSObject {

    func isPalindrome(_ x: Int) -> Bool {
        
        if x < 0 {
            
            return false
        }
        
        let targetNum = x
        let digitCount = digitNum(targetNum)
        var highDivider = Int(pow(10.0, Double(digitCount - 1)))
        var lowDivider = 1
        
        while highDivider >= lowDivider {
            
            let leftDigit = (targetNum / highDivider) % 10
            let rightDigit = (targetNum / lowDivider) % 10
            
            if leftDigit != rightDigit {
                
                return false
            }
            highDivider /= 10
            lowDivider *= 10
        }
        
        return true
    }
    
    func digitNum(_ x: Int) -> Int {
        
        if x == 0 {
            
            return 1
        }
        
        var digit = 0
        
        var remainder = 0
        
        while remainder != x {
            
            digit += 1
            remainder = x % Int(pow(10.0, Double(digit)))
        }
        
        return digit
    }
}
