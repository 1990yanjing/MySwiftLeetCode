//
//  AddTwoNumbers.swift
//  SwiftStudy
//
//  Created by wangyan on 2017/7/18.
//  Copyright © 2017年 wangyan. All rights reserved.
//

import Cocoa

public class ListNode {
    
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class AddTwoNumbers: NSObject {
    
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        
        var ptr1 = l1;
        
        var ptr2 = l2;
        
        let blankHeader = ListNode(-1);
        
        var ptr3 = blankHeader;
        
        if ptr1 == nil && ptr2 == nil {
            
            return nil;
        }
        
        var add = 0;
        repeat {
            
            let sum = (ptr1?.val ?? 0) + (ptr2?.val ?? 0) + add
            let tmp = ListNode(sum % 10)
            add = sum / 10
            
            ptr1 = ptr1?.next
            ptr2 = ptr2?.next
            
            ptr3.next = tmp
            ptr3 = ptr3.next!
            
        } while ptr1 != nil || ptr2 != nil
        
        if(add != 0) {
            
            ptr3.next = ListNode(add);
        }
        
        return blankHeader.next
    }
}
