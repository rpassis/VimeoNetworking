//
//  ExceptionCatcherTests.swift
//  VimeoNetworkingExample-iOSTests, VimeoNetworkingExample-tvOSTests
//
//  Created by Westendorf, Mike on 5/21/17.
//  Copyright © 2016 Vimeo. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import XCTest
@testable import VimeoNetworking

class ExceptionCatcherTests: XCTestCase {
    func test_ExceptionCatcher_CatchesArchiverExceptions() {
        do {
            try ExceptionCatcher.doUnsafe {
                let exception = NSException(name: NSExceptionName.invalidArchiveOperationException, reason: "test exception", userInfo: nil)
                exception.raise()
            }
        }
        catch let error {
            XCTAssertEqual(error.localizedDescription, "test exception")
            return
        }
        
        XCTFail("This test should throw an exception!")
    }
}