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



// key - value searching


// dizideki değer(string ) var mı yok mu onu ara

var isimler1:[String] = ["ali", "ayşe","fatma", "mehmet","aylin"]

var controlName = "aylin"

print(isimler1)

for i in isimler1{
    if (i == controlName){
        print("dizide \(controlName) var")
        break
    }else{
        continue
    }
    
}
 
 

// set çalışması---collections -- aynı elemanı bir daha eklemez ve rastgelelik söz konusu--java-hashset--soru şıkları yer değiştirme örneği
// array but it dosent have index

let setIsmı = Set <Int>() // boş set tanımlama
var setIsmı2: Set = ["bir","takım","stringler"]
let setIsmı3: Set<String> = ["let","yada","set","kullanabilirsin"]

//set işlemleri
//1- append yerine insert kullanılı çünkü append sona eklerdi arraylerde ama burda setlerde insert eder araya bir yere veriyi ekleriz.
// eklenen veriler forla alınır index numarası yoktur.
let sehirlerSeti:Set = ["istanbul","adanamerkez","patlıyorherkes"]
var denemeSet:Set<Float> = [1.2 , 0.3]
let zetIsmı2:Set = [10 , 11 , 12]
// aynı türden verileri kayıt etmez senin listeye eklemen bir şeyi değiştirmez

var meyveler:Set = ["çilek", "muz", "elmaz","kivi"]

for valuee in meyveler {
    print(valuee)
}
 // her çalıştırmanda farklı bir sırayla print eder. Veriler arasında her sayfa yenilemede ya da her kullanıcı için farklı sıralamalar sağlayabilriisn.

// kendince bir index numarası tutar onu da ilk yazdırdığı elemana 0 gelecek iekilde yerleştirir ama bir sonraki çalıştırmada aynı eleman farklı bir index içinde yer alıyor olabilr.

for (indeks, meyve) in meyveler.enumerated(){
    
    print("\(indeks) \(meyve)")
}

//genelde indexle ilgili işlemler yapılmaz Set'lerde
// eleman ekleme-- torbaya ekleme gibi düşün

meyveler.insert("karpuz")

for _ in 1...5{
    
    
    
    for j in meyveler {
        if(j == "karpuz"){
            print("burada zaten karpuz var")
            break
        }
        else {
            print("şimdilik karpuz yok")
        }

    }
    
    
    
    
    // döngü içinde eleman eklenecek
    // birden fazla eklenmicek ama döngü en az beş kez devam etsin dersek
    
}







// hazır methotlar

meyveler.isEmpty // true ya da false döndürecek dolu mu boş mu bakar boş ise true verir

meyveler.count // Int çevirir kaç eleman varsa set içinde onu yazar

meyveler.first // ilk elemanı yazdırır değer stringe onu sayıysa onu döndürür-- last yok

meyveler.contains("muz") // içinde muz var mı yok mu kontrol eder saçma döngülere sokmana gerek kalmaz-- true ya da false döndürür

meyveler.max() // max ya da min değerleri bulunur sayısal olarak
meyveler.min()
meyveler.removeAll() // hepsini temizler

// set yapısına özgü methodlar


let tekSayilar: Set = [1,3,5,7,9]

var ciftSayilar: Set = [0,2,4,6,8]

var asalSayilar: Set = [2,3,5,7]

tekSayilar.union(ciftSayilar.sorted()) // her iki kümeyi de birleştirir benzer değerler zaten set'lerde ikinci kez tekrar etmezdi ama bir kez yazılır:
// [0,1,2,3......9]

tekSayilar.intersection(ciftSayilar).sorted() // her iki küöenin kesişimlerinden yeni bir küme oluşturur tekler ve çiftler asla kesişmez bu set boş olacaktır.

tekSayilar.subtracting(asalSayilar).sorted() // tek sayılar kümseinden asal sayılar kümesini çıkarar kaln kümeden yeni bir set yaratır
// 1 ve 9 kalır çünkü asaldaki 3,5,7 çıkarılacak

tekSayilar.symmetricDifference(asalSayilar).sorted() // her iki kümeyi birleştirir kesişiminde kalan elemanları çıkartır hiç yazdırmaz yeni sete
// 1,2,9 kalacak elimizde




// dictionaries---- last collection -key-value

var dic1 = [Int:String]() // int key'li String Value'li bir dictionary oluşturur ama boş olacak

var dic2 = [3.14:"pi", 2.70:"iki yetmiş"] // tür tip belirtmeden

let dic3:[Int:String] = [1:"Bir", 2:"iki"]








