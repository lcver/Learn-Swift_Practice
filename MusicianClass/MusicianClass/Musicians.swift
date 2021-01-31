//
//  Musician.swift
//  MusicianClass
//
//  Created by Yapindo on 01/02/21.
//

import Foundation

class Musician {
    
    // Properties
    var Name: String = ""
    var age: Int = 0
    var instrument: String = ""
    
    /** Note
     * Initializer it is like construct method in other program language
     */
    
    // Initializer (Constructor)
    init() {
        print("Musicians created")
    }
    
    func showMusician() {
        print(self.Name)
        print(self.age)
        print(self.instrument)
    }
    
}
