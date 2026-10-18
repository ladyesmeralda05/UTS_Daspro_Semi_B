# Library Information & Book Regulation Assistant

program yang dirancang untuk membantu pengguna mencari informasi buku dan mengetahui ketersediaan buku di perpustakaan. 
Program ini juga mengatur proses peminjaman dan pengembalian buku sesuai dengan peraturan yang berlaku.

# Member

(KOM B-LAB 3)
Lady Esmeralda 261401042
Rachel Patresia 261401042
Gabe Sihaloho 26140116

# Fitur-Fitur

1 Menampilkan Daftar Buku.
Program menampilkan 5 judul buku beserta jumlah stok yang tersedia menggunakan perulangan for.

2 Mencari Informasi Buku.
Pengguna memasukkan kode buku. Fungsi CariBuku mencari kode tersebut, lalu program menampilkan judul, stok tersedia, dan jumlah yang sedang dipinjam.

3 Peminjaman Buku.
Program memeriksa kode buku dan ketersediaan stok. Jika jumlah yang diminta valid dan stok mencukupi, stok tersedia dikurangi dan jumlah buku dipinjam ditambah.

4 Pengembalian Buku.
Program memeriksa jumlah buku yang sedang dipinjam. Jika pengembalian valid, jumlah buku dipinjam dikurangi dan stok tersedia ditambah.

5 Perhitungan Denda.
Program menghitung denda berdasarkan jumlah buku yang dikembalikan dan jumlah hari keterlambatan, dengan tarif Rp1.000 per buku per hari.

6 Informasi Aturan.
Perpustakaan Program menampilkan aturan peminjaman, pengembalian, batas stok, dan tarif denda.

7 Validasi Input Program.
memeriksa apakah kode buku, jumlah peminjaman, jumlah pengembalian, dan hari keterlambatan valid. Jika tidak, pengguna diminta memasukkan data kembali.

8 Menu Utama dan Keluar 
Pengguna memilih menu bernomor 1–5 untuk menjalankan fitur atau 0 untuk keluar. Perulangan repeat-until menjaga menu tetap berjalan sampai pengguna memilih keluar.
