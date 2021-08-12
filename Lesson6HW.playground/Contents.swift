import UIKit

//Lesson6HW
// Task 1
  
enum CalculationType: String{
    
    case addition="addition", substraction="substraction", multiplication="multiplication", division="division"
}

func calculateResult(firstNumber numberOne:Int, secondNumber numberTwo:Int, withCalculationType calculationType: CalculationType)-> Int {
    
    var result = numberOne

    switch calculationType {
    
    case .addition: result += numberTwo
    case .substraction: result -= numberTwo
    case .multiplication: result *= numberTwo
    //case .division: result /= numberTwo
    case .division:
        guard numberTwo > 0
        else {
            print ("It is not allowed to devide by 0.")
            return result
        }
        result /= numberTwo
    }
    
    if result != 0{
        print("Result:  \(calculationType.rawValue) of \(numberOne) and \(numberTwo) = \(result)")
    }
    
    return result
}

let numberOne = 100
let numberTwo = 5

calculateResult(firstNumber: numberOne, secondNumber: numberTwo, withCalculationType: .addition)
calculateResult(firstNumber: numberOne, secondNumber: numberTwo, withCalculationType: .substraction)
calculateResult(firstNumber: numberOne, secondNumber: numberTwo, withCalculationType: .multiplication)
calculateResult(firstNumber: numberOne, secondNumber: numberTwo, withCalculationType: .division)


//Task 2.1

struct Car {
    var name:String
    
    func getSpecs() {
        print("I have \(name)")
    }
}
let audiQ7 = Car(name: "Audi Q7")
audiQ7.getSpecs()

var audiTT = audiQ7
audiTT.name = "Audi TT"
audiTT.getSpecs()


//Task 2

struct Car2{
    
    var name:String
    var productionYear:Int
    var horsPower: Int
    
    init(name:String, productionYear:Int, horsPower:Int) {
        self.name = name
        self.productionYear = productionYear
        self.horsPower = horsPower
    }
    
    func specifications(){
        print("I am looking for \(name), build in \(productionYear) with \(horsPower) horse powers engine.")
    }
}
 let vw = Car2(name: "VW", productionYear: 2018, horsPower: 300)
vw.specifications()
