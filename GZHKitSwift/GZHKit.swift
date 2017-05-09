//
//  GZHKit.swift
//  GZHKitSwift
//
//  Created by 顾振华 on 2017/5/8.
//  Copyright © 2017年 顾振华. All rights reserved.
//

public struct GZHKit<Base> {
    /// Base object to extend.
    public let base: Base
    
    /// Creates extensions with base object.
    ///
    /// - parameter base: Base object.
    public init(_ base: Base) {
        self.base = base
    }
}

/// A type that has GZHKit extensions.
public protocol GZHKitCompatible {
    /// Extended type
    associatedtype CompatibleType
    
    /// GZHKit extensions.
    static var gzh: GZHKit<CompatibleType>.Type { get set }
    
    /// GZHKit extensions.
    var gzh: GZHKit<CompatibleType> { get set }
}

extension GZHKitCompatible {
    /// GZHKit extensions.
    public static var gzh: GZHKit<Self>.Type {
        get {
            return GZHKit<Self>.self
        }
        set {
            // this enables using GZHKit to "mutate" base type
        }
    }
    
    /// GZHKit extensions.
    public var gzh: GZHKit<Self> {
        get {
            return GZHKit(self)
        }
        set {
            // this enables using GZHKit to "mutate" base object
        }
    }
}

import Foundation.NSObject
/// Extend NSObject with `gzh` proxy.
extension NSObject: GZHKitCompatible { }
