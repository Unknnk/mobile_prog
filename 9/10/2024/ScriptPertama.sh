#echo "Siapa nama anda?"
#command ini untuk berinteraksi dengan terminal
#setelah "read" merupakan nama variable yang digunakan untuk menampung jawaban atau interaksi dari user/pengguna terhadap terminal
#read name
#untuk memanggil variabel yang kita gunakan untuk menampung jawaban atau interaksi gunakan $
#echo "nama saya adalah $name "

#echo "Hitung Keliling Persegi Panjang"
#echo "Masukkan panjang persegi panjang"
#read p
#echo "Masukkan lebar persegi panjang"
#read l
#keliling=$((2*($p+$l)))
#echo "Keliling: $keliling"

#echo "Hitung Volume Kerucut"
#echo "Masukkan jari-jari"
#read r
#echo "Masukkan tinggi"
#read t
#volume=$((22*$r*$r*$t/(3*7)))
#echo "Volume: $volume"


#untuk membuat sebuah function cukup hanya memberikan nama fungsinya saja setelah function tanpa menggunakan parameter
#function nm_fungsi {}

#untuk pemanggilan function cukup panggil nama functionnya saja
#nm_fungsi

#function hello{}
#    echo "dimana tempat tinggal anda"


#function {}
#    echo "Selamat Datang"


#echo "Siapa nama anda?"
#command ini untuk berinteraksi dengan terminal
#setelah "read" merupakan nama variable yang digunakan untuk menampung jawaban atau interaksi dari user/pengguna terhadap terminal
#read name
#untuk memanggil variabel yang kita gunakan untuk menampung jawaban atau interaksi gunakan $
#echo "nama saya adalah $name "


function hitung_gaya_fisika() {
    echo "Hitung Gaya Fisika"
    echo "Masukkan massa dalam kg"
    read m
    echo "Masukkan accelerasi dalam m/s^2"
    read a
    gaya=$(($m*$a))
    echo "Gaya: $gaya N"
}

hitung_gaya_fisika