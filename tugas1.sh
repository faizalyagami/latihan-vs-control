#!/bin/bash

# mendeklarasikan variable array
list_calculate=("Penjumlahan" "Pengurangan" "Perkalian" "Pembagian" "Keluar")

# function untuk menampilkan daftar operasi aritmatika
display_calculate() {
    echo "=== Kalkulator Sederhana ==="
    for i in "${!list_calculate[@]}"; do
        echo "$((i + 1)). ${list_calculate[$i]}"
    done

}

# function untuk melakukan operasi aritmatika
operate() {
    case $1 in
    1) #penjumlahan
        echo -n "Masukan angka pertama: "
        read num1
        echo -n "Masukan angka kedua: "
        read num2
        echo "Hasil Penjumlahan : $((num1 + num2))"
        ;;
    2) #pengurangan
        echo -n "Masukan angka pertama: "
        read num1
        echo -n "Masukan angka kedua: "
        read num2
        echo "Hasil Pengurangan : $((num1 - num2))"
        ;;
    3) #perkalian
        echo -n "Masukan angka pertama: "
        read num1
        echo -n "Masukan angka kedua: "
        read num2
        echo "Hasil Perkalian : $((num1 * num2))"
        ;;
    4) #pembagian
        echo -n "Masukan angka pertama: "
        read num1
        echo -n "Masukan angka kedua: "
        read num2
        echo "Hasil Pembagian : $((num1 / num2))"
        ;;
    5) #keluar
        exit 0
        ;;
    
    esac
}

while true; do
    display_calculate
    echo -n "Pilih Operasi (1-5):"
    read pilihan
    operate $pilihan
    echo ""
done
