import UIKit

//Lesson 6 In Class
//enums , struct

var someDay = "Friday"

func setupAlarm(){
    if someDay == "friday"{
        print("set up alarm to 8PM")
    }else{
        print("no alarm")
    }
}
 setupAlarm()

enum Weekday {
    case monday, tuesday, wednesday, thursday, friday, saturday, sunday
}
var weekday = Weekday.friday

func setAlarm(){
    if weekday == .monday || weekday == .friday{
        print("set up alarm to 8PM")
    }else{
        print("no alarm")
    }
}
 setAlarm()

func alarm(){
    switch weekday {
    case .monday:
        print("set up alarm to 8PM")
    case .tuesday:
        print("set up alarm to 8PM")
    case .wednesday:
        print("set up alarm to 8PM")
    case .thursday:
        print("set up alarm to 8PM")
    case .friday:
        print("set up alarm to 8PM")
        
    default:
        print("no alarm")
    }
}
weekday = .saturday
 alarm()

//rawValue

enum CalculationinType: String {
    case addition = "+", substaction = "-", multiplication = "*", division = "/"
}
var calc = CalculationinType.addition
print(calc.rawValue)

//

enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, satur, neptune, uranus
}
var somePlanet = Planet.earth
print(somePlanet.rawValue)
print("Earth is the \(somePlanet.rawValue)rd planet form the sun.")
var venus = Planet.venus
print(venus.rawValue)
//

enum Weekend{
    case saturdy(String)
    case sundy(String, Int, String)
}
var wkd = Weekend.sundy("set alarm at", 8, "AM")
print(wkd)

//Struct(unique) - value type, custom data type, automated initializers v. Class (inheritance) - reference type

struct ChessBoard{
    var player:String
    var x: Int
    var y:Int
    
    func getPositionOnTheBoard() {
        print("The position of \(player): \(x), \(y)")
    }
}

var playerOne = ChessBoard(player: "Tom", x: 10, y: 7)
var playerTwo = ChessBoard(player: "Sam", x: 11, y: 3)

playerOne.getPositionOnTheBoard()
playerTwo.getPositionOnTheBoard()

//

class MacBook{
    var name:String
    var year: Int
    var color: String
    
    init(name:String,year: Int,color: String  ) {
        self.name = name
        self.year = year
        self.color = color
    }
    func getSpecifications() {
        print("I have \(name), \(year), \(color)")
    }
}
 let macBooPro = MacBook(name: "MacBookPro", year: 2017, color: "grey")
macBooPro.getSpecifications()
 let macBookAir = macBooPro
macBookAir.name = "MackBookAir"

macBookAir.getSpecifications()
macBooPro.getSpecifications()

//


struct Iphone {
    
    var name:String
    var capacity: Int
    var color: String
    
      func getSpec() {
        print("I have \(name), \(capacity), \(color)")
}
}
    
    let iPhoneXR = Iphone(name: "IphoneXR", capacity: 64, color: "Black")

var iPhoneXS = iPhoneXR
iPhoneXS.name = "iPhoneXS"
iPhoneXS.color = "Red"     //overriding
iPhoneXR.getSpec()
iPhoneXS.getSpec()
