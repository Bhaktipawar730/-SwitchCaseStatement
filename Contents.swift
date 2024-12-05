import Foundation

// Basic switch case with fallthrough
let dayOfWeek = 4

switch dayOfWeek {
case 1:
    print("case 1")
case 2:
    print("case 2")
case 3:
    print("case 3")
case 4:
    print("case 4")
    fallthrough
default:
    print("default")
}

// Switch case with range
let ageGroup = 33

switch ageGroup {
case 0...16:
    print("Child")
case 17...30:
    print("Young Adults")
case 31...40:
    print("Middle Aged")
default:
    print("Old")
}

// Switch case with tuples
let info = ("Sita", 22)

switch info {
case ("Sita", 22):
    print("Sita is 22 years old")
case (_, 22): // Matching only the second element
    print("Age is 22 but name is unknown")
default:
    print("Information unknown")
}

// Value binding in switch case
let someValue: Any = 42

switch someValue {
case let number as Int:
    print("This is an integer: \(number)")
case let text as String:
    print("This is a string: \(text)")
default:
    print("Unknown type")
}

// Using where clause with switch
let number = 7

switch number {
case let x where x < 5:
    print("\(x) is less than 5")
case let x where x > 5:
    print("\(x) is greater than 5")
default:
    print("\(number) is equal to 5")
}

// Switch case with fallthrough
let character = "A"

switch character {
case "A":
    print("First letter of the alphabet")
    fallthrough
case "B":
    print("Second letter of the alphabet")
    fallthrough
default:
    print("Other letter")
}

// Nested switch case
let grade = "B"
let marks = 85

switch grade {
case "A":
    switch marks {
    case 90...100:
        print("Excellent!")
    case 85...89:
        print("Very Good!")
    default:
        print("Good, but can improve!")
    }
case "B":
    print("Good!")
default:
    print("Average")
}
