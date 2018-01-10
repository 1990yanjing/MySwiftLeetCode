//
//  LongestPalindromicSubstring.swift
//  SwiftStudy
//
//  Created by wangyan on 2017/7/19.
//  Copyright © 2017年 wangyan. All rights reserved.
//

import Cocoa

class LongestPalindromicSubstring: NSObject {

    func longestPalindrome(_ s: String) ->  String{
        
        var chars = Array<Character>(s.characters)
        
        var p = Array<Array<Bool>>(repeating: Array<Bool>(repeating: false, count: chars.count), count: chars.count)
        
        var maxLen = 0
        var start = 0, end = 0
        
        for i in 0..<chars.count {
            
            var j = i
            while j >= 0 {
                
                if(chars[i] == chars[j] && (i - j < 2 || p[j + 1][i - 1])) {
                    
                    p[j][i] = true
                    
                    if (i - j + 1) > maxLen {
                        
                        maxLen = i - j + 1
                        start = j
                        end = i
                    }
                }
                j -= 1
            }
        }
        
        let startIndex = s.index(s.startIndex, offsetBy: start)
        let endIndex = s.index(s.startIndex, offsetBy: end + 1)
        
        return s.substring(with: startIndex..<endIndex)
    }
}
