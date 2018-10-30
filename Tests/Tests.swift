//
//  GZHKitSwiftTests.swift
//  GZHKitSwiftTests
//
//  Created by 顾振华 on 2018/10/29.
//  Copyright © 2018 顾振华. All rights reserved.
//

import XCTest
@testable import GZHKitSwift

class GZHKitSwiftTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testRegularExpression() {
        XCTAssert("regex" =~ "^r")
    }
}
