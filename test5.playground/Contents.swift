import UIKit

var hey : String = "hey"
var num : Int = 10
var pi : Float = 3.14
var cr : Double = 3.1111
var check : Bool = true

func cube(num : Float) {
    var out = num;
    for n in 1...2 { out *= num }
    print(out)
}
cube(num: 3)

var pokemons = [String]()
pokemons.append("Shitter")
pokemons.append("Fucker")
pokemons.append("Asshole")
pokemons.append("Idiot")

for ms in pokemons { print(ms) }

var phoneList = [String:Int]()
phoneList["Dima"] = 8904
phoneList["Oleg"] = 3333

var state = false
if(state) { print(state) }
else { print(state) }

class Vector {
    var x : Int = 0
    var y: Int = 0
    var z: Int = 0
    var control : Bool?
    func reset() { self.x = 0; self.y = 0; self.z = 0 }
    func set(nums : [Int]) {
        self.x = nums[0];
        self.y = nums[1];
        self.z = nums[2];
        
    }
    init() { }
}

class Translate : Vector {
    override init() {
        super.init()
        super.reset()
    }
    func move(vec: Int) { self.x += vec; self.y += vec; self.z += vec }
}

var figure = Translate()
figure.set(nums: [2,2,2])
figure.move(vec: 5)
figure.x
