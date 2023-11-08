# Tugas 7

1. Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?
    | Stateful Widget                                                        | Stateless Widget                                                                             |
    |------------------------------------------------------------------------|----------------------------------------------------------------------------------------------|
    | Memiliki state, sehingga tampilannya dapat berubah jika ada interaksi. | Tidak memiliki state, tampilannya akan selalu tetap sampai widget lain mengubah tampilannya. |
    | Umumnya digunakan untuk tampilan yang dinamis dan interaktif.          | Umumnya digunakan untuk tampilan yang tidak perlu banyak dan cepat perubahan.                |
    | Contoh: Add Item Button (bertambah 1 setiap di klik)                   | Contoh: Text "Hello World!"                                                                  |
2. Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.

    - `materialApp` : widget utama untuk mengatur path navigasi
    - `themeData` : mengatur tema keseluruhan proyek
    - `Scaffold` : template dasar tampilan aplikasi
    - `AppBar` : membuat panel seperti _header_
    - `SingleChildScrollView` : membuat konten _scrollable_
    - `Padding` :
    mengatur _padding_
    - `Column` :
    menampilkan elemen dalam bentuk _column_
    - `GridView.count` : membuat _grid_ sesuai _count_
    - `InkWell` : membuat area _responsive_ terhadap sentuhan
    - `Container` : menyimpan elemen-elemen di dalamnya
    - `Icon` : menampilkan ikon
    - `SnackBar` : menampilkan _snackbar_ di bagian bawah layar

3. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)
    - Membuat sebuah program Flutter baru dengan tema inventory seperti tugas-tugas sebelumnya
        1. Membuat proyek Flutter baru dengan nama `ec_mobile`:
        ```
        flutter create ec_mobile
        ```
        2. Membuat file baru `menu.dart` dalam direktori `lib` proyek `ec_mobile`, kemudian membuat class `MyHomePage` seperti yang ada pada `main.dart`
    - Membuat tiga tombol sederhana dengan ikon dan teks
        1. Mengubah `colorScheme` di `main.dart` sesuai dengan tema warna aplikasi
        2. Mengubah state `MyHomePage` menjadi `StatelessWidget`
        3. Menambahkan atribut `color` pada class `ShopItem` untuk membedakan warna setiap _item button_, serta membuat _items_ ShopItem yaitu Lihat Item, Tambah Item, dan Logout
    - Memunculkan `Snackbar`
        Mengatur widget `ShopCard` dengan menambahkan tampilan `SnackBar` serta mengubah _style_ setiap widget