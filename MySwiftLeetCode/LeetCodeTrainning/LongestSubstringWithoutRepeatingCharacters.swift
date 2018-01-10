//
//  LongestSubstringWithoutRepeatingCharacters.swift
//  SwiftStudy
//
//  Created by wangyan on 2017/7/19.
//  Copyright © 2017年 chinaamc. All rights reserved.
//

import Cocoa

class LongestSubstringWithoutRepeatingCharacters: NSObject {
    
    func lengthOfLongestSubstring(_ s: String) -> Int { //滑动窗口
        
        var chars = [Character](s.characters)
        
        var tmpDic = Dictionary<Character, Int>()
        
        var i = 0, ans = 0
        
        for j in 0..<chars.count {
            
            if tmpDic.keys.contains(chars[j]) {
                
                i = max(tmpDic[chars[j]]!, i)
            }
            
            ans = max(ans, j - i + 1)
            tmpDic[chars[j]] = j + 1
        }
        
        return ans
    }
}
