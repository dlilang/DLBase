//
//  UIView+DL.swift
//
//  UIView扩展
//
//  Created by dlilang on 16/5/28.
//
//

import UIKit

public extension UIView {
    
    /** 上 */
    public var top:CGFloat {
        return self.frame.origin.y
    }
    /** 左 */
    public var left:CGFloat {
        return self.frame.origin.x
    }
    /** 宽度 */
    public var width:CGFloat {
        return self.frame.size.width
    }
    /** 高度 */
    public var height:CGFloat {
        return self.frame.size.height
    }
    /** 右 */
    public var right:CGFloat {
        return self.left + self.width
    }
    /** 下 */
    public var bottom:CGFloat {
        return self.top + self.height
    }
    
    /** 上 */
    public func top(top:CGFloat) {
        var frame:CGRect = self.frame
        frame.origin.y = top
        self.frame = frame
    }
    /** 左 */
    public func left(left:CGFloat) {
        var frame:CGRect = self.frame
        frame.origin.x = left
        self.frame = frame
    }
    /** 宽度 */
    public func width(width:CGFloat) {
        var frame:CGRect = self.frame
        frame.size.width = width
        self.frame = frame
    }
    /** 高度 */
    public func height(height:CGFloat) {
        var frame:CGRect = self.frame
        frame.size.height = height
        self.frame = frame
    }
    /** 右 */
    public func right(right:CGFloat) {
        var frame:CGRect = self.frame
        frame.origin.x = right - frame.size.width
        self.frame = frame
    }
    /** 下 */
    public func bottom(bottom:CGFloat) {
        var frame:CGRect = self.frame
        frame.origin.y = bottom - frame.size.height
        self.frame = frame
    }
    
}