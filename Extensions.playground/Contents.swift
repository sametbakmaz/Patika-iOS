extension String {
    
    func printInJapaneseStyle(){
        self.forEach { item in
            print(item)
        }
    }
    func printInArabicStyle(){
        print(String(self.reversed()))
    }
}


let swiftDescription = "Swift is awesome!"
swiftDescription.printInJapaneseStyle()
swiftDescription.printInArabicStyle()

//for character in swiftDescription { //foreach
//    print(character)
//}
//swiftDescription.forEach { item in //closure
//    print(item)
//}
protocol SomeProtocol {
    var someProtocolProperty: String { get }
    func someProtocolMethod()
}

class SomeClass {
    
    var someProperty: String
    init(someProperty: String){
        self.someProperty = someProperty
    }
    func someMethod(){
        print("some method")
    }
}
extension SomeClass: SomeProtocol {
    var someProtocolProperty: String{
        return "some protocol property"
    }
    
    func someProtocolMethod() {
        print("some protocol method")
    }
}
