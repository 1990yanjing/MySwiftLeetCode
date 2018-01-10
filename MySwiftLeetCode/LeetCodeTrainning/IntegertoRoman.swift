//
//  IntegertoRoman.swift
//  SwiftStudy
//
//  Created by wangyan on 2017/7/21.
//  Copyright © 2017年 wangyan. All rights reserved.
//

import Cocoa

class IntegertoRoman: NSObject {
    /**
     * I 1
     * V 5
     * X 10
     * L 50
     * C 100
     * D 500
     * M 1000
     */
    func intToRoman(_ num: Int) -> String {
        
        guard num <= 3999 && num >= 1 else {
            
            return ""
        }
        
        //千位
        let forthDigitStr = num / 1000 == 0 ? "" : String(repeating: "M", count: Int(num / 1000))

        //百位
        let hundredNum = (num / 100) % 10
        let thirdDigitStr = helper(hundredNum, "C", "D", "M")
        
        //十位
        let tenNum = (num / 10) % 10
        let tenDigitStr = helper(tenNum, "X", "L", "C")
        
        //个位
        let unitNum = num % 10
        let unitDigitStr = helper(unitNum, "I", "V", "X")
        
        return forthDigitStr + thirdDigitStr + tenDigitStr + unitDigitStr
    }
    
    private func helper(_ num: Int, _ oneString: String, _ halfString: String, _ wholeString: String) -> String{
        
        guard num > 0 && num <= 9 else {
            
            return ""
        }
        
        if num == 9 {
            
            return oneString + wholeString
        }else if num == 4 {
            
            return oneString + halfString
        }else if num == 5 {
            
            return halfString
        }else if num < 4 {
            
            return String(repeating: oneString, count: num)
        }else {
            
            return halfString + String(repeating: oneString, count: num - 5)
        }
    }
}
