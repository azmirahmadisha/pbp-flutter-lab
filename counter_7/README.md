

### Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.

Widget stateless adalah widget yang tidak berubah (tidak berubah). Tampilan dan propertinya tetap tidak berubah sepanjang masa pakai widget.

Widget Stateful adalah yang mengubah propertinya selama run-time. Mereka dinamis, mereka bisa berubah dan dapat ditarik beberapa kali dalam masa pakainya. Itu dapat mengubah penampilannya sebagai respons terhadap peristiwa yang dipicu oleh interaksi pengguna atau saat menerima data.

<br />

### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

Scaffold : Mengatur layout dari widget yang ada di dalamnya
Text : Untuk menampilkan text dengan style tertentu
FloatingActionButton : Untuk membuat button yang dapat melakukan action tertentu
Row : Memposisikan widget secara horizontal
Column : Memposisikan widget secara vertikal
Padding : Menambahkan padding atau empty space
Center : Memposisikan elemen ke tengah
Icon : Memberi icon ke sebuah elemen

<br />

###  Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

  setState adalah cara Flutter untuk membangun kembali widget saat ini dan turunannya. Selama pembangunan kembali, nilai variabel terbaru akan digunakan untuk  membuat antarmuka pengguna. Command setState dipanggil hanya ketika ingin perubahan dalam variabel tercermin pada UI screen.
  
  ### Jelaskan perbedaan antara const dengan final.

Kata kunci const digunakan untuk membuat variabel untuk menyimpan nilai konstanta waktu kompilasi. Nilai konstanta waktu kompilasi adalah nilai yang akan konstan   selama kompilasi. const bersifat final secara internal tetapi perbedaan utamanya adalah konstanta waktu kompilasinya yang diinisialisasi selama kompilasi bahkan jika Anda tidak menggunakan nilainya, itu akan diinisialisasi dan akan memakan ruang di memori.

Kata kunci final juga digunakan untuk membuat variabel memiliki nilai konstan. Setelah diinisialisasi, pengguna tidak dapat mengubah nilainya. variabel final hanya dapat diset sekali dan diinisialisasi saat diakses.

 ### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

Membuat aplikasi Flutter bernama counter_7 dengan command flutter create counter_7
Membuat fungsi _decrementCounter untuk decrement variabel counter
membuat kondidi ganjil genap dan mengatur warnanya sesuai ketentuan
Menambah container padding yang berisi button untuk increase dan decrease counter
Untuk bonus, gunakan kondisi if (_counter != 0) ... di button dengan action _decreaseCounter agar button tidak muncul saat counter = 0

<br />
