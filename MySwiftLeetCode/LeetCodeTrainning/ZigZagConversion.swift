//
//  ZigZagConversion.swift
//  SwiftStudy
//
//  Created by wangyan on 2017/7/20.
//  Copyright © 2017年 wangyan. All rights reserved.
//

import Cocoa

class ZigZagConversion: NSObject {
    
    func convert(_ s: String, _ numRows: Int) -> String {
        
        guard numRows > 1 else {
            
            return s
        }
        
        var chars = Array<Character>(s.characters)
        
        var retChars = Array<Character>()
        
        let longStep = numRows + numRows - 2
        
        for i in 0..<numRows {
            
            var step = 0
            if i == 0 || i == numRows - 1 {
                
                step = longStep
                var index = i
                while index < chars.count {
                    
                    retChars.append(chars[index])
                    index += step
                }
            }else {
                
                step = longStep - i * 2
                var index = i
                while index < chars.count {
                    
                    retChars.append(chars[index])
                    index += step
                    step = longStep - step
                }
            }
        }
        
        return String(retChars)
    }
}
