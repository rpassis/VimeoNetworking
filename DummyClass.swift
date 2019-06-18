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
        var testVar: String? = "1234"
        testVar!.append("ABC")
        anotherFunc()
    }
}
