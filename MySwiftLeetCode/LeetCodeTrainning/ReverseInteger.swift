//
//  ReverseInteger.swift
//  SwiftStudy
//
//  Created by wangyan on 2017/7/20.
//  Copyright © 2017年 wangyan. All rights reserved.
//

import Cocoa

class ReverseInteger: NSObject {

    func reverse(_ x: Int) -> Int {
        
        let ifLessThan0: Int = x < 0 ? -1 : 1
        
        var str = "\(abs(x))"
        str = String(str.characters.reversed())
        
        //限制为Int32
        let num = Int32(str) ?? 0
        if num == 0 {
            
            return 0
        }else {
            
            return Int(num) * ifLessThan0
        }
    }
}
