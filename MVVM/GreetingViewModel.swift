//
//  GreetingViewModel.swift
//  MVVM
//
//  Created by Samuel Kim on 2018. 1. 19..
//  Copyright © 2018년 Samuel Kim. All rights reserved.
//

import Foundation

protocol GreetingViewModelType: class {
    var greeting: String? { get }
    var greetingDidChange: ((GreetingViewModelType) ->())? { get set } // Data Binding
    init(person: Person)
    func showGreeting()
}

class GreetingViewModel: GreetingViewModelType { // ViewModel
    let person: Person
    var greeting: String? {
        didSet {
            self.greetingDidChange?(self)
        }
    }
    
    var greetingDidChange: ((GreetingViewModelType) -> ())?
    
    required init(person: Person) {
        self.person = person
    }
    
    func showGreeting() {
        self.greeting = "Hello" + " " + person.firstName + " " + person.lastName
    }
    
    
}
