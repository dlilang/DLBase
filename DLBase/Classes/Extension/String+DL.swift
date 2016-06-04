//
//  String+DL.swift
//
//  字符串
//
//  Created by dlilang on 16/5/28.
//

import UIKit

public extension String {
    
    /** md5加密 */
    public func md5() -> String{
        return self.utf8.lazy.map({ $0 as UInt8 }).md5()
    }
    
    /** 转成log输出 */
    public func log() {
        print("\(self)")
    }
    
}