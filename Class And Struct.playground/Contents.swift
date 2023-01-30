protocol SomeProtocol {
    
    var someProperty: String { get set }
}

struct  StructName: SomeProtocol { //Structlar birbirini miras alamaz, Structlar protocolleri conform edebilir. Value Type. Bellekte kopyalanır.
    
    var someProperty: String
    
    init(someProperty: String){
        self.someProperty = someProperty
    }
}

extension StructName { //structlar extension ile genişletilebilir.
    
    func getSomeProperty() -> String {
        return someProperty
    }
}

class SomeSuperClass {
    var name: String
    
    init() {
        
        self.name = "Sone Name"
    }
}

class ClassName: SomeSuperClass, SomeProtocol {
    
    var someProperty: String
    
    init(someProperty: String = "ClassName") {
        self.someProperty = someProperty
    }
}

extension ClassName { //classlarda extension ile genişletilebilir. Reference Type. Hafızada tek bir yerde tutulur ve birbirini referans&adres gösterir
    
    func yourName(){
        print("My name is \(someProperty)")
    }
}

let className = ClassName(someProperty: "Samet")

print(className.name)

print(className.yourName())

let someStruct = StructName(someProperty: "Some String") //değer ataması yapmasaydık default 0 ı gösterirdi ve zorunlu alan değil.

someStruct.getSomeProperty()

print(someStruct.someProperty)
