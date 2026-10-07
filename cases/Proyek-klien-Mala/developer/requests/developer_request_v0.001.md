---
document_type: DEVELOPER_REQUEST
case: Proyek-klien-Mala
request_id: MAL-20261007-01
created_at: 2026-10-07
status: WAITING_RESPONSE
---

# Developer Request

## Pertanyaan / Kebutuhan Klien
Klien membutuhkan kepastian cara menangani penukaran voucher/poin di aplikasi. Dari chat grup, ada laporan kode redeem ditolak saat input manual, sesi redeem dari sisi customer belum terlihat di dashboard, dan pertanyaan apakah customer dapat membatalkan redeem sendiri.

## Konteks yang Sudah Diketahui
- Bukti berupa screenshot chat grup yang menampilkan tanggal 23/04/2026.
- Pada pukul 14.56, klien menyampaikan akun Store Manager, Superadmin, dan Administrator dapat membuka verifikasi redeem. Saat login melalui HP, sistem menampilkan pemindaian QR; jika kode dimasukkan manual, token dilaporkan selalu tidak valid.
- Pada pukul 15.01, klien menunjukkan halaman sesi tukar voucher pada sisi customer dan menyampaikan dashboard belum menerima kode/sesi tersebut, seperti kendala yang sebelumnya sudah disampaikan.
- Pada pukul 15.05, klien menanyakan apakah penukaran poin dari sisi customer memang tidak bisa dibatalkan langsung.
- Nilai token/kode pada screenshot tidak disalin ke dokumen ini.
- Belum diketahui apakah kendala masih berlangsung saat ini, versi aplikasi yang digunakan, ataupun kondisi transaksi terbaru.

## Yang Perlu Divalidasi Developer
1. Untuk Store Manager, Superadmin, dan Administrator, apa alur verifikasi redeem yang saat ini didukung pada HP? Apakah QR harus dipindai, atau input kode manual juga didukung? Jika input manual didukung, apa format kode yang benar dan pemeriksaan umum yang perlu dilakukan saat muncul status tidak valid?
2. Pada kondisi apa sesi redeem customer seharusnya masuk/terlihat di dashboard? Mohon validasi kemungkinan jeda sinkronisasi, status transaksi yang diperlukan, dan langkah pemeriksaan awal yang aman. Jika perlu investigasi kasus ini, data/log spesifik apa yang harus diminta dari klien tanpa meminta token aktif atau kredensial?
3. Apakah customer dapat membatalkan sesi redeem dari aplikasinya sendiri? Jika tidak, siapa yang berwenang membatalkan dan melalui alur mana? Mohon jelaskan perubahan status voucher serta apakah poin dikembalikan, termasuk kondisi yang dapat mencegah pembatalan atau pengembalian poin.
4. Mohon berikan langkah sementara yang aman untuk masing-masing kendala, batasan/risiko, dan informasi minimum yang perlu dikumpulkan untuk memastikan apakah alur pada screenshot masih relevan dengan sistem saat ini.

## Output yang Dibutuhkan
- Jawaban teknis per pertanyaan yang dapat diterjemahkan CS ke klien.
- Langkah pemeriksaan atau tindak lanjut yang bisa dilakukan, beserta data tambahan yang diperlukan.
- Batasan/risiko terkait redeem, pembatalan, dan pengembalian poin.
- Konfirmasi apakah jawaban bersifat final atau masih memerlukan data kasus terkini.

## Catatan
Screenshot yang tersedia bertanggal 23/04/2026, sehingga mohon tandai bila ada bagian yang berubah sejak saat itu. Jangan mengasumsikan transaksi berhasil, gagal, atau poin telah terpotong/dikembalikan sebelum status aktual terverifikasi.