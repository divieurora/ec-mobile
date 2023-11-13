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
   
6. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)
   - Membuat minimal satu halaman baru pada aplikasi, yaitu halaman formulir tambah item baru
     1. Saya membuat file .dart baru untuk Form Tambah Item dengan kode:
        ```
        class FormPage extends StatefulWidget {
          const FormPage({super.key});
        
          @override
          State<FormPage> createState() => _FormPageState();
        }
        
        class _FormPageState extends State<FormPage> {
          final _formKey = GlobalKey<FormState>();
          String _name = "";
          int _amount = 0;
          String _description = "";
          String _category = "";
          @override
          Widget build(BuildContext context) {
            return Scaffold(
              appBar: AppBar(
                title: const Center(
                  child: Text(
                    'Form Tambah Item',
                  ),
                ),
                backgroundColor: Color.fromRGBO(248, 237, 227, 1.0),
                foregroundColor: Color.fromRGBO(125, 110, 131, 1.0),
              ),
              drawer: const LeftDrawer(),
              body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(<untuk masing-masing variable>)})))};
        ```
     2. Kemudian, mengikuti ketentuan pada Soal Bonus, saya menampilkan data dengan `Dialog` dan juga menampilkan data pada _class_ baru yang dapat diakses dari _widget_ `Lihat Item`
    - Mengarahkan pengguna ke halaman form tambah item baru ketika menekan tombol Tambah Item pada halaman utama
     Saya membuat _routing_ dengan memanfaatkan Navigator.push(). Sehingga kode saya adalah sebagai berikut:
     ```
     if (item.name == "Tambah Item") {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const FormPage()));
    }
     ```
    - Memunculkan data sesuai isi dari formulir yang diisi dalam sebuah pop-up setelah menekan tombol Save pada halaman formulir tambah item baru
      Untuk memunculkan data, saya menggunakan `Dialog` berupa pop-up yang akan muncul ketika tombol Save ditekan pada `FormPage`.
    - Membuat sebuah drawer pada aplikasi
      1. Dalam membuat drawer, saya mengikuti langkah-langkah yang ada pada tutorial dengan kode seperti berikut:
         ```
         class LeftDrawer extends StatelessWidget {
          const LeftDrawer({super.key});
        
          @override
          Widget build(BuildContext context) {
            return Drawer(
              child: ListView(
                children: [
                  const DrawerHeader(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(248, 237, 227, 1.0),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Eurora's Closet",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(125, 110, 131, 1.0),
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(10)),
                        Text("Your Best Look Anytime Anywhere",
                          style: TextStyle(
                            color: Color.fromRGBO(125, 110, 131, 1.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ListTile(<untuk setiap page>);
         ```
      2. Saya kemudian melakukan import ke setiap file .dart yang ingin ditambahkan drawer serta menambahkan: `drawer: const LeftDrawer();`
