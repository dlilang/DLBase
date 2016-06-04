//
//  UIColor+DL.swift
//
//  颜色扩展
//
//  Created by dlilang on 16/5/28.
//
//

import UIKit

public extension UIColor {
    
    /** 16进制转换成颜色 */
    convenience init(hex:UInt32){
        let  alpha = CGFloat(hex & 0xFF) / 255.0
        let blue = CGFloat((hex & 0xFF0000) >> 8) / 255.0
        let green = CGFloat((hex & 0xFF0000) >> 16) / 255.0
        let red = CGFloat((hex & 0xFF000000) >> 24) / 255.0
        self.init(red:red, green:green, blue:blue, alpha:alpha)
    }
    
    /** 获取颜色16进制 */
    public var hexValue:UInt32 {
        var r:CGFloat = 0
        var g:CGFloat = 0
        var b:CGFloat = 0
        var a:CGFloat = 0
        self.getRed(&r, green:&g, blue:&b, alpha:&a)
        
        let red:UInt32 = UInt32(r) * 255
        let blue:UInt32 = UInt32(b) * 255
        let green:UInt32 = UInt32(g) * 255
        let alpha:UInt32 = UInt32(a) * 255
        return UInt32(red << 24 + green << 16 + blue << 8 + alpha)
    }
    
}
