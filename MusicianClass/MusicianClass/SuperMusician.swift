//
//  SuperMusician.swift
//  MusicianClass
//
//  Created by Yapindo on 01/02/21.
//

import Foundation

class SuperMusician: Musician {
    
    func sing2() {
        print("enter night")
    }
    
    override func sing() {
        super.sing()
        print("exit light")
    }
    
}
