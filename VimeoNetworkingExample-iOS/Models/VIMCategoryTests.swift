//
//  VIMCategoryTests.swift
//  VimeoNetworkingExample-iOS
//
//  Created by Rogerio de Paula Assis on 6/2/19.
//  Copyright © 2019 Vimeo. All rights reserved.
//

import XCTest
import VimeoTestsSupport

@testable import VimeoNetworking

class VIMCategoryTests: XCTestCase {
    
    
    var category: VIMCategory!
    let payload = PayloadFactory.category.json as! [AnyHashable: Any]
    
    override func setUp() {
        category = VIMCategory(keyValueDictionary: payload)
    }
    
    override func tearDown() {
    }
    
    func test_Category_Properties() {
        let properties = VIMCategory.propertyKeys()
        XCTAssertEqual(properties?.count, 11)
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

