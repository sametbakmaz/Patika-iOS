var someOptionalVariable: Int?
var someVariable: Int = 9

func forceUnwrapp(){
    
    let sum = someOptionalVariable! + someVariable
    
    print(sum)
}
func ifUnwrapExample(){
    if let unwrappedValue = someOptionalVariable {
        
        let sum = unwrappedValue + someVariable
        
        print(sum)
        
    }else {
        print("value is nil")
    }
}

func guardUnwrapExample() {
    guard let unwrappedValue = someOptionalVariable else {
        //    işlem başarısız olduğunda burası çalışır
        print("value is nil")
        return
    }
    let sum = unwrappedValue + someVariable
    
    print(sum)
}

func defaultValueExample(){
    let sum = (someOptionalVariable ?? 0) + someVariable
    
    print(sum)
}

defaultValueExample()
guardUnwrapExample()
ifUnwrapExample()


