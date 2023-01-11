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

for (index,_) in dizi2.enumerated(){
    
    
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

var sonuc5 = sayilar.count
print(sonuc5)


//average calculation

var notes:[Int] = [88,93,87,45,23,34,73,76]
var ttoplam = 0
for i in notes{
    
    ttoplam = ttoplam + i
    
}
print("toplam:\(ttoplam)")

var ortalama = ttoplam / (notes.count)
print(" average calculation:\(ortalama)")

//content replacement


for (index,s) in notes.enumerated()
{
    let sonuc = s * 5
    notes[index] = sonuc
}
print("content replacement: \(notes)")

 // tek, çift sayıları ayıklayan ve belirten kod

var liste:[Int] = [12,13,14,15,16,17,18]
for ix in liste {
    if (ix%2==0){
        //bölümünden kalan 0sa çifttir
        print("çifttir\(ix)")
        
    }
    
    else {
        print("tektir")
    }
 
    
}



// verilen liste elemanlarını ayıklayıp yeni

var rsayilar:[Int] = [0,1,2,3,4,5,6]

var tekler = [Int]()
var ciftler = [Int]()



for i in rsayilar {
    if(i%2==0){
        ciftler.append(i)
    } else{
        tekler.append(i)
    }
}
print(ciftler)

 


// generate random value

var xsayilar = [Int]() // boş dizi yarat

for _ in 1...10{ // 10 kere çalış diyor döngüde
    
    let random = Int.random(in: 0...100) // 0'la 100 arasında sayı üretecek ve döngü içinde 10 kez yazdıracak ekrana
    print(random)
    
    
}



var karisikSayilar = [Int]() // boş bir dizi tanımladık int tutuyor
// boş diziyi 10 döngülük bi for'a sok ve random sayılar üretip diziye yazdır

for _ in 1...10{
    karisikSayilar.append(Int(arc4random_uniform(10)))
}
karisikSayilar.sort()
print(karisikSayilar)


 
// integer dönüşümü yapmadan random sayı üretmek için

let randomSayi = Int.random(in: 0...9) // bir adet random değer üretecektir
print(randomSayi)

 


// karne uygulaması

var notlar = [Int]()
var dersler = [String]()

dersler.append("Tarih")
notlar.append(20)

dersler.append("MAT")
notlar.append(40)

dersler.append("BİO")
notlar.append(45)

dersler.append("Coğrafya")
notlar.append(80)

// iki dizi tek döngü: indexleriyle verileri alacağın

var toplam = 0

for i in 0...(notlar.count-1)
{
    print("Ders: \(dersler[i]) Not: \(notlar[i])")
    
    toplam = toplam + notlar[i]
}
print("notlar ortalaması : \((toplam)/(notlar.count))")




