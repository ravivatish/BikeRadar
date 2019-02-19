//
//  main.swift
//  immutability
//
//  Created by Ravinder Vatish on 1/11/19.
//  Copyright © 2019 Ravinder. All rights reserved.
//

import Foundation

print("Hello, World!")

class Person {
    let firstname: String
    let lastname: String
    var age: Int
    
    init(firstname: String, lastname: String, age: Int) {
        self.firstname = firstname
        self.lastname = lastname
        self.age = age
    }
}

extension Person {
    func age(age: Int) -> Person {
        return Person(firstname: firstname, lastname: lastname, age: age)
    }
}


var p1 = Person(firstname: "ravi", lastname: "vatish", age: 35)


//print(p1.age)

 let p2 = p1.age(age: 45)

print(p1.age)
print(p2.age)

print("ravi")
