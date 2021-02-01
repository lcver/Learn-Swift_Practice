//
//  main.swift
//  MusicianClass
//
//  Created by Yapindo on 01/02/21.
//

import Foundation

print("Hello, World!")

let james = Musician(nameInit: "James Netflix", ageInit: 50, instrumentInit: "Bass", typeInit: .Vocalist)
//print(james.type)
james.sing()

let kirk = SuperMusician(nameInit: "Kirk", ageInit: 55, instrumentInit: "Gitar", typeInit: .LeadGuitar)
//kirk.sing()
//kirk.sing2()
