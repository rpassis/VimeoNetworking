//
//  VIMCategoryTests.swift
//  VimeoNetworkingExample-iOS
//
//  Created by Rogerio de Paula Assis on 6/2/19.
//  Copyright © 2019 Vimeo. All rights reserved.
//

import XCTest
import VimeoTestsSupport
import SnapshotTesting

@testable import VimeoNetworking

class VIMCategoryTests: XCTestCase {
    
    let payload = PayloadFactory.category.json as! [AnyHashable: Any]
    var category: VIMCategory!
    
    override func setUp() {
        category = VIMCategory(keyValueDictionary: payload)
    }
    
    override func tearDown() {
    }
    
    func testCategoryPropertiesSnapshot() {
        let properties = VIMCategory.propertyKeys()
        assertSnapshot(matching: properties, as: .dump)
    }
    
    func testJSONParsing() {
        XCTAssertEqualAndNotNil(category.uri, payload["uri"] as? String)
        XCTAssertEqualAndNotNil(category.link, payload["link"] as? String)
        XCTAssertEqualAndNotNil(category.name, payload["name"] as? String)
        XCTAssertTrue(category.isTopLevel)
        XCTAssertNotNil(category.pictureCollection)
        XCTAssertNotNil(category.connection(withName: "channels"))
        XCTAssertEqual(category.subcategories?.count, 6)
    }
    
}

