# Draft WhatsApp Update — Mala-HKGOLD UAT Status

**Tanggal**: 2026-10-07  
**Tujuan**: Interim status update atas 10 issues yang dilaporkan Mala  
**Format**: Siap copy-paste ke WhatsApp

---

## DRAFT MESSAGE

Selamat sore Kak Mala 🙏

Terima kasih atas laporan detail tentang kendala yang Kakak hadapi saat ini. Tim kami sudah menerima dan memproses seluruh feedback Kakak dari kemarin hingga tadi sore.

**Berikut yang sudah kami lakukan:**

✅ Recap semua 10 issue yang Kakak laporkan  
✅ Prioritaskan berdasarkan severity (1 blocker + 7 high + 2 medium)  
✅ Koordinasikan dengan tim developer untuk immediate action  

---

**PRIORITAS UTAMA - Digarap hari ini/besok:**

🔴 **BLOCKER: Token Validation Error (Point Redemption Gagal)**
- Status: Sudah di-escalate ke dev team
- Estimasi fix: **Hari ini atau besok pagi paling lambat**
- Ini adalah blocker utama yang kami prioritaskan karena mempengaruhi seluruh redemption workflow
- Setelah fix, Kakak diminta test 3x berturut-turut untuk validasi

Sementara menunggu token fix, beberapa issue lain juga sedang kami tangani:

**Sekitar 1-2 hari (HIGH priority):**
- Reward foto tidak muncul (image storage config)
- SKU dengan spasi error (parsing fix)
- Batch import auto-fill Jenis Transaksi dari CSV
- Riwayat point tampil jenis spesifik (Perhiasan, Berlian, dll)
- Duplicate notification removal
- Year-end point reset notification UI

**Sekitar 2-3 hari (MEDIUM priority):**
- Administrator permission granularity
- Marketing geofence testing validation

**iOS App Store — Masih pending Apple** (no ETA pasti, tapi kami monitor daily)

---

**Apa yang perlu Kakak siapkan sementara kami fixing:**

1. **Data siap** untuk review setelah fix dilakukan (screenshot, test scenarios)
2. **Timeline & priority** jika ada feature yang paling urgent untuk Kakak
3. **Konfirmasi** untuk dual product logic (Perhiasan + Berlian) — apakah ini in-scope atau perlu CR?

---

**Update jadwal:**
- Kami akan info progress **setiap hari jam 15.00 WIB** atau sebelumnya jika ada update penting
- Jika ada blocker baru, langsung info real-time

Baik kah, Kak? Ada yang ingin Kakak tanyakan sekarang? 🙏

---

## NOTES UNTUK BESTI:

**Tone Adjustments (sesuai preferensi):**
- Option 1: FORMAL — Ganti "Kak" dengan "Bapak/Ibu", short & professional
- Option 2: FRIENDLY (di atas) — Keep casual "Kak", explain more, emoji sparing
- Option 3: DIRECT — Remove emoji, executive summary only

**Timing Considerations:**
- Mala active tester, expects fast response (3-4 jam SLA observed)
- Send preferably before EOD so Mala can plan next day's testing
- If dev team not ready to commit to ETAs, adjust message to "sedang dianalisa" instead of specific dates

**Follow-up triggers:**
- Jika dev team tidak bisa deliver token fix besok, need to escalate & communicate delay to Mala ASAP
- Jika iOS approval ada movement, update immediately
- Jika ada NEW issues dari Mala, add to tracking list

**Before sending, please confirm:**
1. Apakah dev team already committed ke estimated fix times? (token fix hari ini/besok realistic?)
2. Apakah ETA daily 15:00 WIB update feasible?
3. Apakah tone/bahasa sudah sesuai dengan Mala's preference?
