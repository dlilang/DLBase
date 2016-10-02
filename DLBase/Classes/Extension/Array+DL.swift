//
//  Array+DL.swift
//
//  数组扩展
//
//  Created by dlilang on 16/5/28.
//

import UIKit

// MARK: 扩展二维模型数组下标
public extension Array where Element : Sequence {
    subscript(indexPath:IndexPath) -> DLBaseModel {
        return (self[indexPath.section] as! [DLBaseModel])[indexPath]
    }
}

// MARK: 扩展一维模型数组下标
public extension Array where Element:DLBaseModel {
    subscript(indexPath:IndexPath) -> Iterator.Element {
        return self[indexPath.row]
    }
}
public extension Sequence where Iterator.Element == DLBaseModel {
    subscript(indexPath:IndexPath) -> Iterator.Element {
        return (self as! [Iterator.Element])[indexPath.row]
    }
}

// MARK: 扩展UInt8数组转成MD5字符串
extension Array:DLArray {}
public extension DLArray where Iterator.Element == UInt8 {
    func md5() -> String {
        return DLMD5(self as! [Iterator.Element]).calculate()
            .lazy.reduce("") {$0 + String(format:"%02x", $1)}
    }
}
public protocol DLArray:Collection, RangeReplaceableCollection {}
