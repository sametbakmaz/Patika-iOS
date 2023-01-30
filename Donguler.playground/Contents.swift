for i in 1...100{ //for(int = 0; i<100, i=i+1) ->C'de
    print("ForNumber \(i)")
}
var i = 1
while i<100{
    print("WhileNumber \(i)")
    i += 1
}

var sayiler = [1,3,5,7,17,11,9,1,6]

for (indexNumber,sayi) in sayiler.enumerated() {
    print("\(indexNumber) - \(sayi)")
}
