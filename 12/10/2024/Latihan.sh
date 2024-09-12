# Fungsi untuk menghitung total biaya proyek
function calculate_cost() {
    # Input jumlah pengembang
    echo "Masukkan jumlah pengembang:"
    read developers

    # Input gaji per bulan per pengembang
    echo "Masukkan gaji per pengembang per bulan (dalam Rupiah):"
    read salary_per_dev

    # Input lama proyek dalam bulan
    echo "Masukkan lama proyek (dalam bulan):"
    read project_duration

    # Input biaya server per bulan
    echo "Masukkan biaya server per bulan (dalam Rupiah):"
    read server_cost

    # Input biaya lisensi software
    echo "Masukkan biaya lisensi software (dalam Rupiah):"
    read software_license

    # Input biaya operasional lainnya
    echo "Masukkan biaya operasional lainnya (dalam Rupiah):"
    read operational_cost

    # Input anggaran awal proyek
    echo "Masukkan anggaran awal proyek (dalam Rupiah):"
    read project_budget

    # Menghitung total biaya gaji pengembang
    total_salary=$((developers * salary_per_dev * project_duration))

    # Menghitung total biaya server
    total_server_cost=$((server_cost * project_duration))

    # Menghitung total biaya proyek
    total_cost=$((total_salary + total_server_cost + software_license + operational_cost))

    # Menghitung sisa anggaran proyek
    remaining_budget=$((project_budget - total_cost))

    # Menampilkan hasil perhitungan
    echo "------------------------"
    echo "Total biaya gaji pengembang: Rp $total_salary"
    echo "Total biaya server: Rp $total_server_cost"
    echo "Total biaya lisensi software: Rp $software_license"
    echo "Total biaya operasional: Rp $operational_cost"
    echo "------------------------"
    echo "Total biaya keseluruhan proyek: Rp $total_cost"
    echo "Sisa anggaran: Rp $remaining_budget"

    # Mengecek apakah proyek melebihi anggaran
    if [ $remaining_budget -lt 0 ]; then
        # Jika sisa anggaran negatif, proyek melebihi anggaran
        echo "Proyek melebihi anggaran sebesar Rp ${remaining_budget#-}"
    else
        # Jika sisa anggaran cukup, proyek sesuai anggaran
        echo "Proyek dapat diselesaikan dengan anggaran."
    fi
}

# Memanggil fungsi untuk menghitung biaya proyek
calculate_cost