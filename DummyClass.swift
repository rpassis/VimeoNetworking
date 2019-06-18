//
//  DummyClass.swift
//  Pods
//
//  Created by Rogerio de Paula Assis on 6/18/19.
//

import Foundation

class MyDummyClass
{
    
    let ConstantNumber = "12345"
    
    func NameOfThisFunc() -> Int {
        return Int("test")!
    }
    
    func anotherFunc() {
        var testVar: String? = "test"
        testVar!.append("test")
        testFunc {}
    }
    
    func testFunc() {}
    
    func testFunc(then callback: () -> Void) {
        callback()
    }
    
    func stringEmptyness() -> Bool {
        let test = "test"
        let count = test.count
        return test.count == 0
        
        if test == test {
            testFunc()
        } else {
            testFunc()
        }
    }
    
    func someCommentedOutCodeFunc() {
//        let test = "test"
//        let count = test.count
//        return test.count == 0
//        
//        if test == test {
//            testFunc()
//        } else {
//            testFunc()
//        }
    }
}
