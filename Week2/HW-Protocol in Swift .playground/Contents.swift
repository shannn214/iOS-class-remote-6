
struct Person: PoliceMan {
    var name: String
    var toolMan: ToolMan
    
    func arrestCriminals() {
    }
}

protocol PoliceMan {
    func arrestCriminals()
}

protocol ToolMan {
    func fixComputer()
}

struct Engineer: ToolMan {
    func fixComputer() {
        print("Good man card! GET!")
    }
}


let person = Person(name: "Steven", toolMan: Engineer())

