# CASE — kak umi

## Identity
- Client: Kak Umi (perantara/humas), lembaga Pondok Pesantren Ittihadiyah Tanreassona Pinrang
- Case Slug: umi-custom
- Project: (1) Website company profile ponpes, paket Diamond (WordPress), SELESAI. (2) Sistem PSB (Penerimaan Santri Baru) custom, tahap closing.
- Domain: ittihadiyahtanreassona.ponpes.id. Rencana PSB memakai subdomain (psb.)
- Primary Service/Package: Website Diamond (selesai); Custom PSB 3 modul + VPS WTI-6

## State
- Lifecycle: CLOSING (proyek PSB); website utama AFTER_SALES
- Operational Status: WAITING_MANAGEMENT
- Current Issue: Klien bertanya apakah pajak wajib, dan keberatan karena nominal invoice berbeda dari proposal (ada pajak dan harga VPS baru) tanpa konfirmasi sebelumnya.
- Last Processed Evidence: export chat WhatsApp s.d. 7 Okt 2026 11:43 + screenshot (inbox, local-only)
- Last Updated: 2026-10-07

## Key Facts
- Website Diamond: DP 27 Jul, live 7 Agu, lunas 10 Agu, pelatihan 19 Agu, project closing 21 Agu.
- Pembahasan PSB dimulai 27 Agu. Target pemakaian Januari. Ruang lingkup tahap 1: pendaftaran sampai calon santri diterima. Estimasi 150 pendaftar per periode.
- Klien meminta struktur database dan akun dirancang scalable untuk pengembangan menjadi Sistem Informasi Manajemen Santri. CS sudah mengonfirmasi.
- Klien meminta fitur kartu tes dengan QR unik dan check-in kehadiran tes (14 Sep). CS menjawab "sudah dicek developer, aman". Fitur ini belum tertulis di proposal.
- Rincian biaya proposal revisi: pengembangan Rp6.500.000 + VPS WTI-6 Rp2.028.000/tahun = **Rp8.528.000** tahun pertama. Domain dihapus karena memakai subdomain. Biaya infrastruktur tahunan PSB Rp2.028.000. Total dengan website compro disebut CS "hampir 3 jutaan".
- Garansi/maintenance bug minor yang final: 3 bulan setelah live.
- Backup mingguan ke Cloudflare R2. Biaya transaksi Xendit tidak termasuk.
- 14 Sep: CS menyatakan biaya VPS "sudah net". Pengurus menyetujui. Klien mengajukan dana sesuai proposal.
- 15 Sep: invoice dikirim dengan pajak dan harga VPS katalog baru, sehingga nominal lebih tinggi. Klien keberatan, lalu 17 Sep meminta ditunda.
- 7 Okt: klien meminta keterbukaan anggaran dan agar invoice tidak diubah tanpa konfirmasi. Klien bersedia lanjut dan bertanya apakah pajak wajib.

## Confirmed Decisions
- Penamaan PPDB diganti PSB.
- Website utama tetap di shared hosting. PSB di VPS dan subdomain.
- Maintenance 3 bulan setelah live.

## Pending
- MGT-UMI-20261007-001: keputusan PPN, nominal final invoice, dan harga VPS yang dipakai.
- Lampirkan invoice 15 Sep (nominal dan item VPS) ke request.
- Masukkan fitur QR check-in tes ke scope tertulis setelah divalidasi formal oleh Developer.

## Last Action
- 7 Okt 11:19: holding reply soal pajak ("dikonfirmasi ke finance"). Klien: "Baikk d tunggu".

## Next Action
- Tunggu keputusan Finance/Management, lalu kirim Draft A atau B di output/client-reply_v0.001.md.
- Kirim invoice baru hanya setelah klien menyetujui angka final.

## References
- Developer Request/Response: -
- Management Request/Response: management/requests/MGT-UMI-20261007-001_v0.001.md
- Active Project Documents: proposal PSB dan proposal revisi (8 Sep), invoice 15 Sep. Ketiganya belum tersimpan di repo.
- Client Reply Draft: output/client-reply_v0.001.md

## Notes
- Kredensial hosting/WP pernah dikirim di chat. Jangan disalin ke repo.
- Klien sensitif terhadap perubahan harga karena berperan sebagai perantara ke pengurus. Selalu berikan satu angka final tertulis sebelum menerbitkan invoice.
