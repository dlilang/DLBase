//
//  UIScreen+DL.swift
//
//  屏幕
//
//  Created by dlilang on 16/5/31.
//

import UIKit

var _sizeInPixel:CGSize = CGSizeZero

public extension UIScreen {
    
    /** 象素大小 */
    var sizeInPixel:CGSize {
        var token:dispatch_once_t = 0
        dispatch_once(&token) {
            let model:String = UIDevice.currentDevice().machine
            if model.hasPrefix("iPhone") {
                if model.hasPrefix("iPhone1") {
                    _sizeInPixel = CGSizeMake(320, 480)
                }else if model.hasPrefix("iPhone2") {
                    _sizeInPixel = CGSizeMake(320, 480)
                }else if model.hasPrefix("iPhone3") {
                    _sizeInPixel = CGSizeMake(640, 960)
                }else if model.hasPrefix("iPhone4") {
                    _sizeInPixel = CGSizeMake(640, 960)
                }else if model.hasPrefix("iPhone5") {
                    _sizeInPixel = CGSizeMake(640, 1136)
                }else if model.hasPrefix("iPhone6") {
                    _sizeInPixel = CGSizeMake(640, 1136)
                }else if model.hasPrefix("iPhone7,1") {
                    _sizeInPixel = CGSizeMake(1080, 1920)
                }else if model.hasPrefix("iPhone7,2") {
                    _sizeInPixel = CGSizeMake(750, 1334)
                }
            }else if model.hasPrefix("iPod") {
                if model.hasPrefix("iPod1") {
                    _sizeInPixel = CGSizeMake(320, 480)
                }else if model.hasPrefix("iPod2") {
                    _sizeInPixel = CGSizeMake(320, 480)
                }else if model.hasPrefix("iPod3") {
                    _sizeInPixel = CGSizeMake(640, 960)
                }else if model.hasPrefix("iPod4") {
                    _sizeInPixel = CGSizeMake(640, 960)
                }else if model.hasPrefix("iPod5") {
                    _sizeInPixel = CGSizeMake(640, 1136)
                }
            }else if model.hasPrefix("iPad") {
                if model.hasPrefix("iPad1") {
                    _sizeInPixel = CGSizeMake(768, 1024)
                }else if model.hasPrefix("iPad2") {
                    _sizeInPixel = CGSizeMake(768, 1024)
                }else if model.hasPrefix("iPad3") {
                    _sizeInPixel = CGSizeMake(1536, 2048)
                }else if model.hasPrefix("iPad4") {
                    _sizeInPixel = CGSizeMake(1536, 2048)
                }else if model.hasPrefix("iPad5") {
                    _sizeInPixel = CGSizeMake(1536, 2048)
                }
            }
            
            if CGSizeEqualToSize(_sizeInPixel, CGSizeZero) {
                if self.respondsToSelector("nativeBounds") {
                    _sizeInPixel = self.nativeBounds.size
                } else {
                    _sizeInPixel = self.bounds.size
                    _sizeInPixel.width *= self.scale
                    _sizeInPixel.height *= self.scale
                }
                if _sizeInPixel.height < _sizeInPixel.width {
                    let tmp = _sizeInPixel.height
                    _sizeInPixel.height = _sizeInPixel.width
                    _sizeInPixel.width = tmp
                }
            }
            
        }
        return _sizeInPixel
    }
    
}
