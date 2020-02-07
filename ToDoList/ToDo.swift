//
//  ToDo.swift
//  ToDoList
//
//  Created by Aileen Bull on 2/4/20.
//  Copyright © 2020 Aileen Bull. All rights reserved.
//

import Foundation

class ToDo {
    var name : String
    var important : Bool
    
    init(name: String = "", important: Bool = false) {
        self.name = name
        self.important = important
    }
}
