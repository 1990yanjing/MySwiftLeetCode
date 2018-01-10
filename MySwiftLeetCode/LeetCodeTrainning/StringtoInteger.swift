
//
//  StringtoInteger.swift
//  SwiftStudy
//
//  Created by wangyan on 2017/7/20.
//  Copyright © 2017年 wangyan. All rights reserved.
//

import Cocoa

class StringtoInteger: NSObject {

    func myAtoi(_ str: String) -> Int {
        
        let chars = Array<Character>(str.trimmingCharacters(in: [" "]).characters)
        let ifLessThan0: Bool = (chars.first == "-")
        var targetChars = [Character]()
        
        for i in 0..<chars.count {
            
            if Int(String(chars[i])) == nil && !(i == 0 && (chars[i] == "-" || chars[i] == "+")) {
                
                break;
            }else {
                
                if chars[i] != "-" && chars[i] != "+" {
                    
                    targetChars.append(chars[i])
                }
            }
        }
        
        if(targetChars.isEmpty) {
            
            return 0
        }else {
            
            let str = String(targetChars)
            
            var ret = Int(str) ?? 0
            
            if let tmp = Int(str) {
                
                ret = tmp
            }else {
                
                if ifLessThan0 {
                    
                    return Int(Int32.min)
                }else {
                    
                    return Int(Int32.max)
                }
                
            }
            
            let zero = ifLessThan0 ? -1 : 1
            if ret * zero > Int(Int32.max) {
                
                return Int(Int32.max)
            }
            
            if ret * zero < Int(Int32.min) {
                
                return Int(Int32.min)
            }
            
            return ret * zero
        }
    }
}
