# CASE — kak umi

## Identity
- Client: Kak Umi (perantara/humas), lembaga Pondok Pesantren Ittihadiyah Tanreassona Pinrang
- Case Slug: umi-custom
- Project: (1) Website company profile ponpes, paket Diamond (WordPress), SELESAI. (2) Sistem PSB (Penerimaan Santri Baru) custom, tahap closing.
- Domain: ittihadiyahtanreassona.ponpes.id. Rencana PSB memakai subdomain (psb.)
- Primary Service/Package: Website Diamond (selesai); Custom PSB 3 modul + VPS WTI-6

## State
- Lifecycle: CLOSING (proyek PSB); website utama AFTER_SALES
- Operational Status: READY_TO_REPLY
- Current Issue: Resolved — Keputusan manajemen sudah diterima. PPN dicantumkan + diskon 10% untuk full payment.
- Last Processed Evidence: keputusan manajemen 7 Okt 2026
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
- **PPN dicantumkan** (Webekspres PKP aktif, sesuai PMK 131/2024, tarif efektif 11%).
- **Nominal final PSB tahun pertama: Rp7.675.200** (Rp8.528.000 setelah diskon 10% untuk full payment).
- **Harga VPS WTI-6: Rp2.028.000/tahun** (menggunakan harga proposal, bukan katalog terbaru).
- **Dokumen pendamping:** MoU, SLA, dan NDA akan disertakan sebagai jaminan.

## Pending
- Kirim balasan final (client-reply_v0.001.md) ke Kak Umi via WhatsApp setelah konfirmasi dari tim.
- Tunggu persetujuan klien atas penawaran diskon + nominal final.
- Setelah klien approve: siapkan invoice baru (Rp7.675.200), MoU, SLA, NDA untuk ditandatangani.
- Masukkan fitur QR check-in tes ke scope tertulis setelah divalidasi formal oleh Developer (untuk meeting analis nanti).

## Last Action
- 7 Okt 2026: Manajemen memberi keputusan — PPN wajib dicantumkan, diskon 10% untuk full payment, MoU/SLA/NDA akan disertakan.

## Next Action
1. Kirim balasan final dengan penawaran diskon 10% (Rp7.675.200 setelah full payment) ke Kak Umi.
2. Tunggu persetujuan klien.
3. Jika disetujui: siapkan invoice, MoU, SLA, NDA.
4. Setelah pembayaran lunas: schedule meeting Developer untuk analisis detail & mulai antrean pengerjaan.

## References
- Developer Request/Response: —
- Management Request/Response: management/requests/MGT-UMI-20261007-001_v0.001.md (FINAL — keputusan diterima 7 Okt)
- Client Reply Draft: output/client-reply_v0.001.md (READY TO SEND)
- Active Project Documents: proposal PSB revisi, MoU, SLA, NDA (belum diisi; akan disiapkan setelah klien approve)

## Notes
- Kredensial hosting/WP pernah dikirim di chat. Jangan disalin ke repo.
- Klien sensitif terhadap perubahan harga karena berperan sebagai perantara ke pengurus. Selalu berikan satu angka final tertulis sebelum menerbitkan invoice.
