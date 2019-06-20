class Phone {
    var model : String = ""
    var numbers = [String:Int]()
    var number : Int?
    func addNum(num : Int, name: String) { 
        if(num != 0) { numbers[name] = num }
    }
    func call(name : String) {
        var num = checkNum(name: name)
        if(num != 0) { print("Calling \(name):\(num)") }
    }
    func sendSMS() { }
    func checkNum(name: String) -> Int { 
        for (nm,num) in self.numbers {
            if(nm == name) { return num }
        }
        return 0
    }
    func setNum(num: Int) { self.number = num } 
    func getNum() -> Int { return self.number! }
    init(model : String) { self.model = model }
}

class Nokia : Phone {
    override init(model: String) { 
        super.init(model: model)
    }
    func sendSMS(name: String, message: String) { 
        var num = super.checkNum(name: name)
        if(num != 0) { print("Sending message \"\(message)\" --> \(name):\(num)") }
     }
}
var myPhone = Phone(model: "Alaska")
myPhone.setNum(num: 322)
//myPhone.sendSMS(num: 2, "Hello"); // ERROR
var newPhone = Nokia(model: "Lepso")
newPhone.setNum(num: 911)
//myPhone.addNumber(number: newPhone.number, name: "Oleg")

newPhone.addNum(num: myPhone.getNum(), name: "Oleg")
myPhone.addNum(num: newPhone.getNum(), name: "Dima")
newPhone.call(name: "Oleg")
newPhone.sendSMS(name: "Oleg", message: "hello");
