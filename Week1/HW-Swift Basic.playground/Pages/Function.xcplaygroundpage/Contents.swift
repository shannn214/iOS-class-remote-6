//1
func greet(person: String) -> String {
    let greeting = "Hello, \(person)"
    return greeting
}

greet(person: "Celeste")

//2

func multiply(a: Int, b: Int = 10) {
    
    print(a * b)
}

multiply(a: 3)
