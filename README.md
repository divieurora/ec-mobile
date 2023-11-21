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

# Tugas 8

1. Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!
    Navigator.push() menambahkan _route_ pada paling atas _stack_, sehingga _route_ baru akan menimpa yang lama dan ditampilkan kepada pengguna. Sedangkan Navigator.pushReplacement() menghapus _route_ yang sedang ditampilkan kepada pengguna dan menggantinya dengan _route_ baru. 
2. Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!
    - `Align`: mensejajarkan posisi dengan _child_-nya dan membuat ukurannya sesuai dengan _child_-nya
    - `Center`: mengatur _alignment child_ ke bagian tengah
    - `Column`: membuat _layout child_-nya berarah vertikal
    - `Container`: membuat posisi, ukuran, dan _layout widget child_-nya serupa
    - `ListView`: membuat _list_ yang _scrollable_
    - `Padding`: mengatur posisi _gap_ di sekitar _child_
    - `Row`: membuat _layout child_-nya berarah horizontal
3. Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!
    Elemen input pada form yang saya pakai pada tugas kali ini adalah `TextFormField` untuk masing-masing _name_, _amount_, _description_, dan _category_. Saya menggunakan `TextFormField` agar _user_ dapat memberi masukan berupa teks yang fleksibel sesuai dengan keinginan.
4. Bagaimana penerapan clean architecture pada aplikasi Flutter?
   5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)
       - Membuat minimal satu halaman baru pada aplikasi, yaitu halaman formulir tambah item baru
           1. Saya membuat file .dart baru untuk Form Tambah Item dengan kode:
            ``` ```
           2. Kemudian, mengikuti ketentuan pada Soal Bonus, saya menampilkan data dengan `Dialog` dan juga menampilkan data pada _class_ baru yang dapat diakses dari _widget_ `Lihat Item`
       - Mengarahkan pengguna ke halaman form tambah item baru ketika menekan tombol Tambah Item pada halaman utama
           Saya membuat _routing_ dengan memanfaatkan Navigator.push(). Sehingga kode saya adalah sebagai berikut:
           ``` ```
       - Memunculkan data sesuai isi dari formulir yang diisi dalam sebuah pop-up setelah menekan tombol Save pada halaman formulir tambah item baru
            Untuk memunculkan data, saya menggunakan `Dialog` berupa pop-up yang akan muncul ketika tombol Save ditekan pada `FormPage`.
       - Membuat sebuah drawer pada aplikasi
            1. Dalam membuat drawer, saya mengikuti langkah-langkah yang ada pada tutorial dengan kode seperti berikut:
                 ```  ```
            2. Saya kemudian melakukan import ke setiap file .dart yang ingin ditambahkan drawer serta menambahkan: `drawer: const LeftDrawer();`

# Tugas 9
1. Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?

    Bisa, dan datanya akan muncul sebagai jsonDecode. Namun, pengambilan data JSON tanpa membuat model terlebih dahulu tidak lebih baik daripada membuat model sebelum melakukan pengambilan data JSON karena data tidak diinisiasi secara langsung menjadi object dalam class model.
2. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.

3. Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.

4. Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.

5. Sebutkan seluruh widget yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing.
    - `Align`: mensejajarkan posisi dengan _child_-nya dan membuat ukurannya sesuai dengan _child_-nya
    - `Center`: mengatur _alignment child_ ke bagian tengah
    - `Column`: membuat _layout child_-nya berarah vertikal
    - `Container`: membuat posisi, ukuran, dan _layout widget child_-nya serupa
    - `ListView`: membuat _list_ yang _scrollable_
    - `ListTile`: membuat _list_ beberapa _tile_
    - `MaterialPageRoute`: mengarahan _routing_ ke _widget_ lain
    - `Padding`: mengatur posisi _gap_ di sekitar _child_
    - `Row`: membuat _layout child_-nya berarah horizontal
    - `Text`: membuat _text_ dan mengatur propertinya
    - `TextStyle`: mengatur properti _style_ dari `Text`
6. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
    - Membuat halaman login pada proyek tugas Flutter.
        1. Untuk membuat halaman login, pertama adalah mengatur _authentication_ di Django App dengan melakukan `django-admin startapp authentication` kemudian mengatur ke `settings.py`
        2. Menambahkan `django-cors-headers` ke _depedencies_ dan mengatur _views_ untuk login pada app _authentication_ serta membuat _routing_-nya.
    - Mengintegrasikan sistem autentikasi Django dengan proyek tugas Flutter.
        1. Menginstall _package_ `pbp_django_auth` kemudian memodifikasi _root widget_ menggunakan `CookieRequest` dengan `Provider`
        2. Membuat file `login.dart` dan mengatur isinya sesuai tutorial.
    - Membuat model kustom sesuai dengan proyek aplikasi Django.
        Dari Django App yang sudah di-_deploy_, menyalin data yang ada pada _endpoint_ `JSON` kemudian memanfaatkan website Quicktype untuk membuatnya menjadi file .dart.
    - Membuat halaman yang berisi daftar semua item yang terdapat pada endpoint JSON di Django yang telah kamu deploy.
        1. Membuat file baru `list_item.dart` untuk menampilkan _name, amount, description, category,_ dan _image_ dari masing-masing item pada halaman ini. Kurang lebih isi dari file ini mengikuti yang ada pada tutorial.
        2. Mengatur _routing_ dari _widget_ di `MyHomePage()` ke `Daftar Item` untuk melihat _list_ item yang ada.
    - Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar Item.
        Setelah berhasil menampilkan dan mengatur _routing_, menambahkan tombol untuk kembali ke `MyHomePage()` dengan menambahkan:
        ```

        ```