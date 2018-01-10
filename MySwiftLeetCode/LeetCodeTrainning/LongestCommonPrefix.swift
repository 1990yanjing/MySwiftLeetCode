//
//  LongestCommonPrefix.swift
//  SwiftStudy
//
//  Created by wangyan on 2017/7/25.
//  Copyright © 2017年 wangyan. All rights reserved.
//

import Cocoa

class LongestCommonPrefix: NSObject {

    func longestCommonPrefix(_ strs: [String]) -> String {
        
        guard strs.count > 1 else {
            
            return strs.count > 0 ? strs[0] : ""
        }
        
        let sortedStr = strs.sorted { (str1: String, str2: String) -> Bool in
            
            return str1.characters.count < str2.characters.count
        }
        
        let lenMinStr = sortedStr[0]
        
        guard lenMinStr != "" else {
            
            return ""
        }
        
        var ret = ""
        for i in 1...lenMinStr.characters.count {
            
            let prefix = lenMinStr.substring(to: lenMinStr.index(lenMinStr.startIndex, offsetBy: i))
            var ifFinished = false
            for str in strs {
                
                if !str.hasPrefix(prefix) {
                    
                    ifFinished = true
                    break
                }
            }
            
            if ifFinished {
                
                break
            }else {
                
                ret = prefix
            }
        }
        
        return ret
    }
}
