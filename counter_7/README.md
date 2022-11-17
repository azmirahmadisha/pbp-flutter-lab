# TUGAS 7

### Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.

Widget stateless adalah widget yang tidak berubah (tidak berubah). Tampilan dan propertinya tetap tidak berubah sepanjang masa pakai widget.

Widget Stateful adalah yang mengubah propertinya selama run-time. Mereka dinamis, mereka bisa berubah dan dapat ditarik beberapa kali dalam masa pakainya. Itu dapat mengubah penampilannya sebagai respons terhadap peristiwa yang dipicu oleh interaksi pengguna atau saat menerima data.

<br />

### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

1. Scaffold : Scaffold dirancang untuk menjadi wadah tingkat atas tunggal untuk MaterialApp.
2. Text : Teks adalah widget di Flutter yang memungkinkan kita menampilkan string teks dengan satu baris di aplikasi kita.
3. Icon : Widget icon digunakan untuk menambahkan icon.
4. FloatingActionButton : FAB adalah tombol ikon melingkar yang mengarahkan kursor ke konten untuk mempromosikan tindakan utama dalam aplikasi. Secara garis besar, digunakan untuk mengimplementasikan action.
5. Padding : Menambahkan padding atau ruang kosong di sekitar widget atau banyak widget.


<br />

###  Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

  setState adalah cara Flutter untuk membangun kembali widget saat ini dan turunannya. Selama pembangunan kembali, nilai variabel terbaru akan digunakan untuk  membuat antarmuka pengguna. Command setState dipanggil hanya ketika ingin perubahan dalam variabel tercermin pada UI screen.
  
  ### Jelaskan perbedaan antara const dengan final.

Kata kunci const digunakan untuk membuat variabel untuk menyimpan nilai konstanta waktu kompilasi. Nilai konstanta waktu kompilasi adalah nilai yang akan konstan   selama kompilasi. const bersifat final secara internal tetapi perbedaan utamanya adalah konstanta waktu kompilasinya yang diinisialisasi selama kompilasi bahkan jika Anda tidak menggunakan nilainya, itu akan diinisialisasi dan akan memakan ruang di memori.

Kata kunci final juga digunakan untuk membuat variabel memiliki nilai konstan. Setelah diinisialisasi, pengguna tidak dapat mengubah nilainya. variabel final hanya dapat diset sekali dan diinisialisasi saat diakses.

 ### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

1. Melakukan command flutter create untuk membuat sebuah aplikasi/project Flutter baru dengan nama counter_7
2. Menambahkan fungsi untuk pengurangan counter dengan nama fungsi _decrementCounter
3. Memodifikasi kode sehingga memiliki conditional statement di mana akan menampilkan genap saat counter bernilai genap dan ganjil saat counter bernilai ganjil, termasuk mengatur style warna font.
4. Memodifikasi floating action button bagian decrease sehingga diawali dengan kondisi jika counter > 0 agar tombol decrement tidak muncul ketika counter <= 0.

<br />


# TUGAS 8

### Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement.

   Navigator.push() adalah metode yang digunakan untuk menambahkan rute lain ke atas tumpukan screen (stack) saat ini di mana alaman baru akan ditampilkan di atas halaman sebelumnya. Sementara itu, Navigator.pushReplacement digunakan untuk menggantikan halaman sebelumnya (replacement) jika sudah ada.


### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
1. Scaffold : Scaffold dirancang untuk menjadi wadah tingkat atas tunggal untuk MaterialApp.
2. Text : Teks adalah widget di Flutter yang memungkinkan kita menampilkan string teks dengan satu baris di aplikasi kita.
3. Icon : Widget icon digunakan untuk menambahkan icon.
4. FloatingActionButton : FAB adalah tombol ikon melingkar yang mengarahkan kursor ke konten untuk mempromosikan tindakan utama dalam aplikasi. Secara garis besar, digunakan untuk mengimplementasikan action.
5. Padding : Menambahkan padding atau ruang kosong di sekitar widget atau banyak widget.
6. Navigator: Navigator adalah widget di Flutter yang digunakan untuk berpindah dari suatu halaman ke halaman yang lain.
7. Form: Widget Form adalah sebuah kontainer yang digunakan untuk menampung form field widgets.
8. TextFormField: TextFromField adalah sebuah FormField yang menampung TextField dan digunakan untuk input teks pada form.
9. TextButton: TextButton secara umum adalah button yang memiliki tulisan. TextButton berfungsi seperti button pada umumnya yang akan meng-execute sebuah fungsi/command ketika ditekan.
10. DropdownButton: Dropdown button digunakan bagi user untuk memilih dari sejumlah piliha item. Button ini juga menunjukkan item yang sedang dipilih dan sebuah arrow yang dapaet membuka pilihan item lainnya.

### Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).
1. onPressed(), execute suatu fungsi ketika mengklik sebuah button
2. onTap(), execute suatu fungsi ketika mengklik sebuah widget satu kali
3. onChanged(), execute suatu fungsi ketika merubah suatu value pada sebuah widget
4. onSaved(), execute suatu fungsi ketika menyimpan sebuah form

### Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.
Navigasi pada flutter bekerja seperti sebuah stack. Pada pengaplikasian navigator, ketika Navigator.push dijalankan, maka halaman saat ini akan ditimpa dengan halaman baru yang dipush (menggunakan prinsip stack). Setelah dilakukan Navigator.push, halaman yang dapat dilihat oleh user adalah halaman yang terbaru. Meskipun digantikan dengan halaman baru, halaman lama tidak akan dihapus kecuali menggunakan Navigator.pushReplacement.

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
1. Membuat file drawer.dart untuk membuat widget drawer sebagai penghubung antara halaman program counter, tambah budget, dan data budget.
2. Membuat file baru bernama form.dart untuk membuat form yang akan ditampilkan pada halaman Tambah Budget. Form tersebut berisi textField untuk judul, nominal uang, dropdown button, serta submit button Simpan untuk menyimpan data-data yang telah diinput.
3. Membuat file baru bernama budget.dart untuk menampilkan data pada halaman Data Budget. Data-data tersebut berupa judul, nominal, dan tipe budget yang telah diinput pada halaman Tambah Budget.
4. Import file-file lain di aplikasi counter_7 di setiap file dart.
