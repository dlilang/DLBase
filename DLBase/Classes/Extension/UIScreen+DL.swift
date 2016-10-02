//
//  UIScreen+DL.swift
//
//  屏幕
//
//  Created by dlilang on 16/5/31.
//

import UIKit

let sizeInPixel:CGSize = {
    var _sizeInPixel:CGSize = CGSize.zero
    let model:String = UIDevice.current.machine
    if model.hasPrefix("iPhone") {
        if model.hasPrefix("iPhone1") {
            _sizeInPixel = CGSize(width: 320, height: 480)
        }else if model.hasPrefix("iPhone2") {
            _sizeInPixel = CGSize(width: 320, height: 480)
        }else if model.hasPrefix("iPhone3") {
            _sizeInPixel = CGSize(width: 640, height: 960)
        }else if model.hasPrefix("iPhone4") {
            _sizeInPixel = CGSize(width: 640, height: 960)
        }else if model.hasPrefix("iPhone5") {
            _sizeInPixel = CGSize(width: 640, height: 1136)
        }else if model.hasPrefix("iPhone6") {
            _sizeInPixel = CGSize(width: 640, height: 1136)
        }else if model.hasPrefix("iPhone7,1") {
            _sizeInPixel = CGSize(width: 1080, height: 1920)
        }else if model.hasPrefix("iPhone7,2") {
            _sizeInPixel = CGSize(width: 750, height: 1334)
        }
    }else if model.hasPrefix("iPod") {
        if model.hasPrefix("iPod1") {
            _sizeInPixel = CGSize(width: 320, height: 480)
        }else if model.hasPrefix("iPod2") {
            _sizeInPixel = CGSize(width: 320, height: 480)
        }else if model.hasPrefix("iPod3") {
            _sizeInPixel = CGSize(width: 640, height: 960)
        }else if model.hasPrefix("iPod4") {
            _sizeInPixel = CGSize(width: 640, height: 960)
        }else if model.hasPrefix("iPod5") {
            _sizeInPixel = CGSize(width: 640, height: 1136)
        }
    }else if model.hasPrefix("iPad") {
        if model.hasPrefix("iPad1") {
            _sizeInPixel = CGSize(width: 768, height: 1024)
        }else if model.hasPrefix("iPad2") {
            _sizeInPixel = CGSize(width: 768, height: 1024)
        }else if model.hasPrefix("iPad3") {
            _sizeInPixel = CGSize(width: 1536, height: 2048)
        }else if model.hasPrefix("iPad4") {
            _sizeInPixel = CGSize(width: 1536, height: 2048)
        }else if model.hasPrefix("iPad5") {
            _sizeInPixel = CGSize(width: 1536, height: 2048)
        }
    }
    
    if _sizeInPixel.equalTo(CGSize.zero) {
        if UIScreen.main.responds(to:#selector(getter:UIScreen.nativeBounds)) {
            _sizeInPixel = UIScreen.main.nativeBounds.size
        } else {
            _sizeInPixel = UIScreen.main.bounds.size
            _sizeInPixel.width *= UIScreen.main.scale
            _sizeInPixel.height *= UIScreen.main.scale
        }
        if _sizeInPixel.height < _sizeInPixel.width {
            let tmp = _sizeInPixel.height
            _sizeInPixel.height = _sizeInPixel.width
            _sizeInPixel.width = tmp
        }
    }
    return _sizeInPixel
}()

public extension UIScreen {
    
    /** 象素大小 */
    var sizeInPixel:CGSize {
        return sizeInPixel
    }
    
}
