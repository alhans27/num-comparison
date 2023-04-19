def perhitungan(num1, num2, operasi)
    case operasi
    when "<"
        hasil = num1 < num2
    when ">"
        hasil = num1 > num2
    when "<="
        hasil = num1 <= num2
    when ">="
        hasil = num1 >= num2
    when "=="
        hasil = num1 == num2
    when "!="
        hasil = num1 != num2
    end
    return hasil
end

def pembanding(x) 
    print "Masukkan angka pertama : "
    num1 = gets.chomp.to_i
    print "Masukkan angka kedua : "
    num2 = gets.chomp.to_i
    hasil = perhitungan(num1, num2, x)

    if hasil
        puts "YAP, perbandingan antara #{num1} #{x} #{num2} => BENAR"
    else
        puts "TIDAK, perbandingan #{num1} #{x} #{num2} => SALAH"
    end
end

def pilihMenu
    puts "--------------------------------------------------------------"
    puts "APLIKASI PEMBANDING DUA BUAH ANGKA"
    puts "--------------------------------------------------------------"
    puts "Pilih pembanding apa yang akan Anda gunakan !"
    puts "1. <"
    puts "2. >"
    puts "3. <="
    puts "4. >="
    puts "5. =="
    puts "6. !="
    puts "0. Exit Apps"
    print "Pilihan Anda ? : "
    pilihan = gets.chomp.to_i

    case pilihan
    when 1
        puts "Pilihannya adalah #{pilihan} yaitu <"
        pembanding("<")
    when 2
        puts "Pilihannya adalah #{pilihan} yaitu >"
        pembanding(">")
    when 3
        puts "Pilihannya adalah #{pilihan} yaitu <="
        pembanding("<=")
    when 4
        puts "Pilihannya adalah #{pilihan} yaitu >="
        pembanding(">=")
    when 5
        puts "Pilihannya adalah #{pilihan} yaitu =="
        pembanding("==")
    when 6
        puts "Pilihannya adalah #{pilihan} yaitu !="
        pembanding("!=")
    when 0
        puts "Exit...."
    else
        puts "Anda memilih pilihan yang salah. Pilihan #{pilihan} tidak ada dalam daftar!"
    end
    return pilihan
end

pilihan = pilihMenu
while pilihan != 0
    pilihan = pilihMenu
end