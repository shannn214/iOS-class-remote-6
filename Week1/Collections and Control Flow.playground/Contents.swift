/*
 ------
 Array
 ------
 */

//1
var myFriends: [String] = []

//2
myFriends += ["Ian", "Boni", "Kevin"]

//3
myFriends.append("Michael")
//myFriends += ["Michael"]

//4
myFriends.remove(at:2)
myFriends.insert("Kevin", at:0)

//5
print(myFriends[0...3])

/*
 (another way?)
 for item in myFriends{
 print(item)
 }
 */

//6
myFriends.count

/*
 6. There is no one at index 5.
 I use myFriends.count to check wheather index 5 is out of my array's existing
 bounds or not. In doing this, I can avoid to type myFriends[5] directly and cause the
 system crash.
 */



/*
 ----------
 Dictionary
 ----------
 */

//1,2
var myCountryNumber: [String : Int] = ["US": 1, "GB": 44, "JP": 81]

//3
myCountryNumber["US"] = nil
myCountryNumber

//4
myCountryNumber["GB"] = 0
myCountryNumber

//5
let key = [String](myCountryNumber.keys)
let value = [Int](myCountryNumber.values)

//For print
for key in myCountryNumber.keys {
    print("\(key)")
}

for value in myCountryNumber.values {
    print(value)
}



/*
 ------------------
 For, While, Repeat
 ------------------
 */

//1
for friend in myFriends {
    print("\(friend)")
}

for (country, number) in myCountryNumber {
    print("\(country)", number)
}

//2
let lottoNumbers = [10, 9, 8, 7, 6, 5]
for lastThree in lottoNumbers[3...5] {
    print(lastThree)
}

//3
for aa in 5...10 {
    print(aa)
}

let end = 6
let cc = -2
for down in stride(from: 10, through: end, by: cc){
    print(down)
}
//note: need more practice in this part...

//4
var nn = 5
while nn <= 10 {
    print(nn)
    nn += 1
}

var kk = 10
while kk >= 6 {
    print(kk)
    kk -= 2
}

//5
var rr = 5
repeat {
    print(rr)
    rr += 1
} while rr <= 10

var tt = 10
repeat {
    print(tt)
    tt -= 2
} while tt >= 6


/*
 ------------
 If statement
 ------------
 */

var isRaining = "sunny day"

if isRaining == "raining" {
    print("It's raining. I don't want to work today.")
} else {
    print("Although it's sunny, I still don't want to work today.")
}


/*
 ------------
 Switch
 ------------
 */

var jobLevel = 5

switch jobLevel {
case 1: print("Member")
case 2: print("Team Leader")
case 3: print("Manager")
case 4: print("Director")
default:
    print("We don't have this job.")
}




