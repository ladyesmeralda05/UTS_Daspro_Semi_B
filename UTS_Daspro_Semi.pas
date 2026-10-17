program LibraryInformationBookAssistant;

const
  jumlahBuku = 5;
  dendaPerHari = 1000;

var
  judul: array[1..jumlahBuku] of string;
  tersedia: array[1..jumlahBuku] of integer;
  dipinjam: array[1..jumlahBuku] of integer;
  pilihan, kode, jumlah, hariTerlambat: integer;
  i, indeks, denda: integer;

function CariBuku(kodeCari: integer): integer;
var
  i: integer;
begin
  CariBuku := 0;

  for i := 1 to jumlahBuku do
  begin
    if kodeCari <> i then
      continue;

    CariBuku := i;
    break;
  end;
end;

procedure TampilkanBuku;
var
  i: integer;
begin
  writeln;
  writeln('DAFTAR BUKU');
  writeln('Kode  Judul Buku                  Tersedia');

  for i := 1 to jumlahBuku do
    writeln(i:2, '    ', judul[i]:30,
            tersedia[i]:5);

  writeln('');
end;

begin
  { Data awal buku }
  judul[1] := 'Algoritma dan Pemrograman';
  judul[2] := 'Dasar Komputer';
  judul[3] := 'Basis Data';
  judul[4] := 'Jaringan Komputer';
  judul[5] := 'Sistem Informasi';

  tersedia[1] := 3;
  tersedia[2] := 4;
  tersedia[3] := 2;
  tersedia[4] := 3;
  tersedia[5] := 2;

  for i := 1 to jumlahBuku do
    dipinjam[i] := 0;

  repeat
    writeln;
    writeln('');
    writeln(' LIBRARY INFORMATION & BOOK REGULATION ');
    writeln('');
    writeln('1. Lihat Daftar Buku');
    writeln('2. Cari Informasi Buku');
    writeln('3. Peminjaman Buku');
    writeln('4. Pengembalian Buku');
    writeln('5. Lihat Aturan dan Denda');
    writeln('0. Keluar');
    writeln('');
    write('Pilih menu: ');
    readln(pilihan);

    case pilihan of

      1:
        begin
          TampilkanBuku;
        end;

      2:
        begin
          TampilkanBuku;
          write('Masukkan kode buku: ');
          readln(kode);

          indeks := CariBuku(kode);

          if indeks = 0 then
            writeln('Kode buku tidak valid!')
          else
          begin
            writeln('Judul buku: ', judul[indeks]);
            writeln('Stok tersedia: ', tersedia[indeks]);
            writeln('Sedang dipinjam: ', dipinjam[indeks]);
          end;
        end;

      3:
        begin
          TampilkanBuku;
          write('Masukkan kode buku: ');
          readln(kode);

          indeks := CariBuku(kode);

          if indeks = 0 then
            writeln('Kode buku tidak valid!')
          else if tersedia[indeks] = 0 then
            writeln('Maaf, stok buku habis!')
          else
          begin
            write('Jumlah buku yang dipinjam: ');
            readln(jumlah);

            while (jumlah <= 0) or
                  (jumlah > tersedia[indeks]) do
            begin
              writeln('Jumlah tidak valid atau stok kurang!');
              write('Masukkan jumlah yang benar: ');
              readln(jumlah);
            end;

            tersedia[indeks] :=
              tersedia[indeks] - jumlah;

            dipinjam[indeks] :=
              dipinjam[indeks] + jumlah;

            writeln('Peminjaman berhasil!');
            writeln('Buku: ', judul[indeks]);
            writeln('Jumlah: ', jumlah);
          end;
        end;

      4:
        begin
          TampilkanBuku;
          write('Masukkan kode buku: ');
          readln(kode);

          indeks := CariBuku(kode);

          if indeks = 0 then
            writeln('Kode buku tidak valid!')
          else if dipinjam[indeks] = 0 then
            writeln('Buku ini tidak tercatat sedang dipinjam.')
          else
          begin
            write('Jumlah buku yang dikembalikan: ');
            readln(jumlah);

            while (jumlah <= 0) or
                  (jumlah > dipinjam[indeks]) do
            begin
              writeln('Jumlah pengembalian tidak valid!');
              write('Masukkan jumlah yang benar: ');
              readln(jumlah);
            end;

            write('Hari keterlambatan (0 jika tepat waktu): ');
            readln(hariTerlambat);

            while hariTerlambat < 0 do
            begin
              writeln('Hari keterlambatan tidak boleh negatif!');
              write('Masukkan kembali jumlah hari: ');
              readln(hariTerlambat);
            end;

            denda := jumlah * hariTerlambat * dendaPerHari;

            dipinjam[indeks] :=
              dipinjam[indeks] - jumlah;

            tersedia[indeks] :=
              tersedia[indeks] + jumlah;

            writeln('Pengembalian berhasil!');
            writeln('Judul buku: ', judul[indeks]);
            writeln('Total denda: Rp', denda);
          end;
        end;

      5:
        begin
          writeln;
          writeln('ATURAN PERPUSTAKAAN');
          writeln('1. Pilih kode buku yang tersedia.');
          writeln('2. Buku harus dikembalikan.');
          writeln('3. Denda keterlambatan Rp1000');
          writeln('   per buku per hari.');
          writeln('4. Jumlah pinjaman tidak boleh');
          writeln('   melebihi stok yang tersedia.');
          writeln('');
        end;

      0:
        begin
          writeln('Terima kasih telah menggunakan program.');
          break;
        end;

    else
      writeln('Pilihan menu tidak valid!');
    end;

  until pilihan = 0;

  writeln('Program selesai.');
end.