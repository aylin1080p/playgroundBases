import UIKit

var a:Int32 = 50
if a < 70 {
    print("evet")
}
else if( a  > 50 ) {
    print( "işlmeler")
    
}


for index in 1...5 {
    print(index)
}


var dizi:[Int] = [22,33,44,55]

for i in dizi {
    if (i == dizi[2]){
        continue
    }
    print("sonuç : \(i)" )
    
    
}

// second version (if you don' want to use any index)

var dizi2:[Int] = [66,77,88,99]

for (index, i) in dizi2.enumerated(){
    
    
    if(index == 2){
        continue
    }
    
    print("index : \(index)")
}


// resimlerden dizi oluşturma nasıl yapılıyor ???????

// array filterin' operations
var sayilar:[Int] = [0,2,4,6, 7, 8]
var sonuc = sayilar.filter({ $0 >= 7 })
print(sonuc)

var sonuc2 = sayilar.filter({ $0 < 7})
print(sonuc2)
 
var sonuc3 = sayilar.filter({ $0 > 2 && $0 < 7})
print(sonuc3)

var sonuc4 = sayilar.filter({ $0 > 2 || $0 < 7})
print(sonuc4)
