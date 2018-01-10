//
//  RomantoInteger.swift
//  SwiftStudy
//
//  Created by wangyan on 2017/7/21.
//  Copyright © 2017年 chinaamc. All rights reserved.
//

import Cocoa

class RomantoInteger: NSObject {

    func romanToInt(_ s: String) -> Int {
        
        guard !s.isEmpty else {
            
            return 0
        }
        
        let chars = Array<Character>(s.characters)
        let romanDigitValueDic: Dictionary<Character, Int> = ["I" : 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
        
        var ans = 0
        
        for i in 0..<chars.count {
            
            if ["I", "X", "C"].contains(String(chars[i])) {
                
                if i + 1 < chars.count {
                    
                    if romanDigitValueDic[chars[i + 1]]! >  romanDigitValueDic[chars[i]]! {
                        
                        ans -= romanDigitValueDic[chars[i]]!
                    }else {
                        
                        ans += romanDigitValueDic[chars[i]]!
                    }
                }else {
                    
                    ans += romanDigitValueDic[chars[i]]!
                }
            }else {
                
                ans += romanDigitValueDic[chars[i]]!
            }
        }
        
        return ans
    }
}
