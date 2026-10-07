---
document_type: DEVELOPER_REQUEST
case: Proyek-klien-Mala
request_id: MAL-20261007-01
created_at: 2026-10-07
status: WAITING_RESPONSE
version: 0.002
---

# Developer Request — Revisi 0.002

Request ini memperluas MAL-20261007-01 setelah gambar yang tidak terbawa di ekspor chat dilampirkan. Mohon jawab per bagian dan tandai bagian yang membutuhkan data tambahan atau pengecekan langsung.

## Pertanyaan / Kebutuhan Klien
Klien sedang menguji aplikasi membership dan web admin. Mereka meminta panduan untuk katalog/redeem dan hak akses, koreksi upload poin, penghitungan masa berlaku poin, serta kecocokan informasi transaksi antara aplikasi dan dashboard.

## Konteks Bukti
- Ekspor chat bertanggal 7 Oktober 2026. Pertanyaan terkait berada pada rentang sekitar pukul 09.35–15.05.
- Screenshot tambahan memperlihatkan form edit baris injeksi poin, notifikasi batch diproses, riwayat poin di aplikasi, tampilan mutasi di dashboard, pesan token redeem tidak valid, sesi QR redeem dengan hitung mundur, riwayat voucher dengan status “Dibatalkan Admin”, serta notifikasi sesi QR dibatalkan/kedaluwarsa.
- Bukti tidak cukup untuk memastikan bahwa token pada pesan gagal adalah token yang sama dengan sesi QR yang tampak aktif pada screenshot lain. Jangan mengaitkan dua kejadian itu tanpa pemeriksaan.
- Identitas member, nomor telepon, email, serta nilai token/kode dari screenshot tidak disalin ke request ini.

## Yang Perlu Divalidasi Developer

### A. Katalog Reward, Foto, dan Redeem
1. Klien melaporkan foto reward tidak muncul dan reward baru yang dibuat juga belum tampil di aplikasi. Validasi syarat agar reward dan fotonya tampil (status/publikasi, cabang, periode, format/ukuran file, atau sinkronisasi/cache), lalu berikan langkah pemeriksaan aman dan data diagnostik minimum bila masih gagal.
2. Jelaskan lokasi/alur Store Manager menerima dan memproses redeem, termasuk apakah perlu PIN dan di mana PIN dikelola atau dimasukkan. Klien juga menyebut tampilan Superadmin, Administrator, dan Store Manager terlihat sama; mohon jelaskan hak akses tiap peran dan lokasi pengaturannya, atau konfirmasi bila izin saat ini memang tidak dapat dikustomisasi dari admin.
3. Pada validasi token manual, layar menampilkan pesan bahwa token tidak ditemukan, sudah dipakai, atau kedaluwarsa. Mohon konfirmasi alur yang didukung (scan QR dan/atau input manual), masa berlaku token, serta cara membedakan penyebab tersebut. Sertakan langkah pemeriksaan tanpa meminta token aktif atau kredensial.
4. Pada screenshot customer ada sesi QR dengan hitung mundur sekitar 30 menit, sedangkan screenshot lain memperlihatkan QR/sesi diberi notifikasi dibatalkan atau kedaluwarsa dan pengguna diminta redeem kembali dari riwayat. Dashboard juga dilaporkan belum menerima kode sesi. Jelaskan status yang seharusnya terlihat pada tiap tahap dan pemeriksaan sinkronisasi yang perlu dilakukan.
5. Bedakan secara eksplisit pembatalan sesi QR oleh customer, kedaluwarsa sesi, dan pembatalan voucher yang tercatat “Dibatalkan Admin”. Siapa yang dapat melakukan masing-masing tindakan, bagaimana langkahnya, dan apakah/kapankah poin dikembalikan? Mohon jangan menyamakan pembatalan sesi QR dengan pembatalan transaksi voucher.

### B. Koreksi Upload Poin Massal
6. Saat mengedit baris upload/injeksi yang keliru, form meminta tanggal transaksi dan jenis transaksi diisi manual, sedangkan nominal pembelian terisi. Klien menyebut kedua nilai tanggal dan jenis transaksi sudah ada di CSV. Apakah kolom CSV tersebut seharusnya terpetakan dan terisi otomatis saat koreksi? Jika ya, jelaskan format/header yang didukung dan kemungkinan penyebab kolom tidak terbaca. Jika tidak, jelaskan batasannya dan cara koreksi yang paling aman untuk menghindari salah input.
7. Klien menanyakan notifikasi batch dan teks/kode referensi yang muncul pada riwayat poin customer: apakah label “Batch” beserta kode belakangnya memang ditampilkan, dan apakah referensi itu berubah saat data/batch dikoreksi atau diproses ulang? Jelaskan hubungan referensi aplikasi, notifikasi batch, dan catatan mutasi dashboard.
8. Screenshot notifikasi menunjukkan batch selesai diproses; riwayat aplikasi menampilkan waktu transaksi yang menurut klien berbeda (sekitar pukul 07.00 di aplikasi, padahal diharapkan sekitar pukul 12.00), sedangkan tampilan mutasi dashboard hanya menampilkan tanggal. Validasi sumber waktu, zona waktu, dan timestamp yang dipakai di setiap layar. Apakah waktu 5 jam lebih awal merupakan perilaku yang diharapkan atau indikasi bug? Mohon jelaskan cara verifikasi dengan event/log yang sama dan apakah waktu transaksi perlu ditampilkan di dashboard.

### C. Masa Berlaku / Reset Poin dan Tier
9. Pada 6 Oktober klien meminta reset poin/tier akhir tahun mengikuti tanggal poin diperbarui/dikreditkan, bukan tanggal transaksi, karena upload bisa dilakukan H+3 (misalnya transaksi 31 Desember masuk pada 3 Januari). Developer saat itu menyatakan akan menyesuaikan. Mohon konfirmasi aturan yang disepakati, status implementasinya, dan perilaku untuk batas pergantian tahun serta dampaknya pada saldo poin dan tier. Mohon sebutkan juga lokasi informasi masa berlaku/reset yang bisa dilihat klien/member.

## Data Tambahan Jika Diperlukan
Mohon sebutkan bukti minimum yang dibutuhkan untuk investigasi tiap bagian (misalnya waktu kejadian dan zona waktu, nama layar/fitur, status reward, versi/build aplikasi, nomor batch non-rahasia, atau tangkapan layar yang sudah menyamarkan data member). Jangan meminta password, token redeem aktif, atau data autentikasi.

## Output yang Dibutuhkan
- Jawaban dan langkah tindak lanjut per nomor di atas, termasuk batasan atau risiko operasional.
- Penjelasan mana yang merupakan perilaku saat ini, bug yang perlu diperbaiki, atau perubahan yang belum diimplementasikan.
- Informasi minimum yang harus diminta CS dari klien bila bukti yang ada belum cukup.
- Tandai jawaban yang final untuk disampaikan CS dan yang masih menunggu investigasi.