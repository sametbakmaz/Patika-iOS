//Private: En kısıtlı dosya düzeyi

private class SomeClass {
    
    let someProperty: String
    
//    var getSomeProperty: String {
//        return someProperty
//    }
    
    init(someProperty: String) {
        self.someProperty = someProperty
    }
    
//    func getSomeProperty () -> String {
//        return someProperty
//    }
}

fileprivate let someClass = SomeClass(someProperty: "default value")

//someClass.someProperty = "New Value"
//print(someClass.someProperty)

//Fileprivate: Dosya dışında kullanıma kapalı

fileprivate class SomeSubClass: SomeClass {
    let counter: Int = 0
    
    init() {
        super.init(someProperty: "Default2")
    }
}

fileprivate let someSubClass = SomeSubClass()

print(someSubClass.someProperty)

//Internal: Varsayılan erişim düzeyi içinde bulunduğu kod bloğu bunu etkiler. Private'sa kod bloğu private gibi davarnır. Alt sınıflar erişebilir. Dışarıdan erişilebilir.

//Public: Moduller arasında her yerden erişilebilir.(Bir kütüphane -> bir modul.)

//Open: Tam manada erişilebilirlik. Publicten farkı ekstra olarak override edebilme yetkisi veriyor. İç yapıda değişiklik yapacak seviyede erişim.
