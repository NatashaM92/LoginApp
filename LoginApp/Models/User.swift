//
//  User.swift
//  LoginApp
//
//  Created by Наталья Миронова on 16.12.2022.
//

struct User {
    let userName: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            userName: "User",
            password: "Password",
            person: Person(name: "Natasha",
                           age: 30,
                           hobby: "Sport and swift",
                           pet: .exoticAnimal,
                           info: "This is my pet kangaroo. His name is 'Малец'. I love to eat delicious food, so I had to fall in love with going to the gym. I love walking in the fresh air, traveling, driving, shopping, sessions with a psychologist, sewing, and now also programming.",
                           myFoto: "1",
                           fotoMyPet: "2")
        )
    }
}

struct Person {
    let name: String
    let age: Int
    let hobby: String
    let pet: Animal
    let info: String
    let myFoto: String
    let fotoMyPet: String
}

enum Animal: String {
    case dog = "dog"
    case cat = "cat"
    case exoticAnimal = "kangaroo"
    case noAnimal = "not Animal 😔"
}
