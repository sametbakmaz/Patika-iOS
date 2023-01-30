protocol SomeProtocol {
    var someGetProperty: Int { get }
    var someGetAndSetProperty: String { get }//enum için set i kaldırdık şuan.
    func someMethod(someParameter: Double) -> Float
}
extension SomeProtocol {
    func someUtility(){
        print("some utility")
    }
}

class SomeSuperClass{
    
    var someSuperProperty: Bool = false
    
}

class SomeClass: SomeSuperClass, SomeProtocol,Equatable {
    
    var id: Int
    var someGetProperty: Int = .zero
    
    var someGetAndSetProperty: String
    
    func someMethod(someParameter: Double) -> Float {
        return .zero
    }
    
    init(id: Int){
        self.id = id
        someGetAndSetProperty = "Default Value"
    }
}

let firstSomeClass = SomeClass(id: 0)
let secondSomeClass = SomeClass(id: 1)

firstSomeClass.someUtility()

if firstSomeClass == secondSomeClass { //Equatable Protocolu sayesinde class nesnelerini karşılaştırabiliyoruz.
    print("eşit")
}else {
    print("eşit değil")
}

func == (lhs: SomeClass, rhs: SomeClass) -> Bool {
    return lhs.id == rhs.id
}

struct SomeStruct: SomeProtocol {
    var someGetProperty: Int
    
    var someGetAndSetProperty: String
    
    func someMethod(someParameter: Double) -> Float {
        return .zero
    }
}

let someStruct = SomeStruct(someGetProperty: 0, someGetAndSetProperty: "someStruct")

someStruct.someUtility()

enum SomeEnum:SomeProtocol{
    var someGetProperty: Int {.zero}
    
    var someGetAndSetProperty: String {"DefaultEnumValue"}
    
    func someMethod(someParameter: Double) -> Float {
        return .zero
    }
}

enum HavaDurumu: Int, CaseIterable {
    case acik
    case yagmurlu
    case bulutlu
}

for havaDurumu in HavaDurumu.allCases{
    print(havaDurumu.rawValue)
}
