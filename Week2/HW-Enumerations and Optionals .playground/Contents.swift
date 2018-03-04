//1
enum Gasoline: Int {
    case a = 92
    case b = 95
    case c = 98
    case diesel
    
    func getPrice(for price: Gasoline) -> Int {
        switch price {
        case .a:
            return 100
        case .b:
            return 120
        case .c:
            return 130
        default:
            return 140
        }
    }
}


//2
class Pet {
    let name: String
    init(name: String) {
        self.name = name
    }
}

class People {
    let pet: Pet?
    init? (pet: Pet){
        self.pet = pet
    }
}

func owner(myPet: [String: Pet]) -> People? {
    if let name = myPet["name"] {
        return People(pet: name)
    } else {
        return nil
    }
}

func newOwner(myPet: [String: Pet]) -> People? {
    guard let name = myPet["name"] else {
        return nil
    }
    return People(pet: name)
}


























