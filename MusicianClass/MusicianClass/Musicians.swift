//
//  Musician.swift
//  MusicianClass
//
//  Created by Yapindo on 01/02/21.
//

import Foundation

// Enum
enum MusicianType {
    case LeadGuitar
    case Vocalist
    case Drummer
    case Bassist
    case Violenist
}

class Musician {
    
    // Properties
    var name: String
    var age: Int
    var instrument: String
    var type: MusicianType
    
    /** Note
     * Initializer it is like construct method in other program language
     */
    
    // Initializer (Constructor)
    init(nameInit: String, ageInit: Int, instrumentInit: String, typeInit: MusicianType) {
        name = nameInit
        age = ageInit
        instrument = instrumentInit
        type = typeInit
    }
    
    func showMusician() {
        print(self.name)
        print(self.age)
        print(self.instrument)
    }
    
}
