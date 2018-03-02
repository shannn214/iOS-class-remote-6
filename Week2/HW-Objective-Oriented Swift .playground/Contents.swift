
enum Gender {
    case male
    case female
    case undefined
}

class Animale{
    
    var gender: Gender
    init(gender: Gender){
        self.gender = gender
    }
    
    func eat(){
        print("I eat everything!")
    }
}

class Elephant: Animale{
    override func eat() {
        print("I eat Doritos!")
    }
}

class Tiger: Animale{
    override func eat() {
        print("I eat MMs!")
    }
}

class Horse: Animale{
    override func eat() {
        print("I eat Pickles!")
    }
}


class Zoo{
    
    var weeklyHot: Animale?

    init() { }
    
    
}


let zoo = Zoo()
let tiger = Tiger(gender: Gender.male)
let elephant = Elephant(gender: Gender.female)
let horse = Horse(gender: Gender.undefined)

zoo.weeklyHot = tiger
zoo.weeklyHot = elephant
zoo.weeklyHot = horse





