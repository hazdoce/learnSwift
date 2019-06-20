class Shoe {
    var name: String?
    var speed: Float?
    init() { }
    func reset() { }
    func run() { }
    func set() { }
}

class Auto : Shoe {
     init(name: String) {
        super.init()
        self.name = name
    }
    override func reset() {
        self.name = ""
        self.speed = 0.0
    }
    func set(speed: Float) { self.speed = speed }
    func run(way: Float) -> Float { 
        var hours : Float = 0
        if(self.speed! != 0) { hours = (way / self.speed!)  }
        else { hours = way }
        return hours
    }
}
var audi = Auto(name: "audi-a6")
audi.set(speed: 198.0)
var cityTocity = audi.run(way: 920.0)
print("Way in hours to CITY:\t\(cityTocity)")
