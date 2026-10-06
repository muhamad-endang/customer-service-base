# Customer Service Base — PT Webekspres Teknologi Indonesia

Workspace Codex + VS Code untuk pekerjaan Customer Service Webekspres.

## Cheat Sheet — Cara Pakai Harian

### Jalur tercepat

**1. Masukkan screenshot/chat klien**

Untuk histori case yang rapi, simpan screenshot terbaru ke:

```text
cases/<nama-klien>/inbox/
```

Screenshot juga boleh dilampirkan langsung ke prompt Codex, tetapi file pada `inbox/` menjadi evidence lokal yang lebih mudah dilacak untuk case tersebut.

**2. Beri perintah singkat ke Codex**

Contoh:

```text
proses kasus andre
```

atau:

```text
bantu balas chat terbaru andre
```

**3. Gunakan hasil Codex**

Codex akan otomatis:
- membaca `CASE.md`;
- membaca screenshot/attachment terbaru;
- mencari knowledge Webekspres yang relevan;
- mengenali pesan klien terakhir yang belum terjawab;
- menentukan apakah data cukup;
- membuat balasan WhatsApp atau eskalasi yang diperlukan;
- melakukan QC;
- memperbarui case/knowledge bila diperlukan;
- commit + push bila ada artifact repository yang berubah.

### Jika klien belum punya case

Buat sekali saja:

```powershell
./scripts/new-case.ps1 -Slug andre -ClientName "Andre"
```

Setelah itu satu klien tetap menggunakan folder case yang sama sepanjang lifecycle proyek.

### Jika Codex membutuhkan Developer

Codex akan membuat request pada:

```text
cases/<nama-klien>/developer/requests/
```

Kirim form tersebut ke Developer.

Setelah Developer mengisi jawaban, simpan ke:

```text
cases/<nama-klien>/developer/responses/
```

Kemudian cukup perintahkan:

```text
lanjutkan kasus andre
```

Tidak perlu menjelaskan ulang konteks yang sudah tersimpan.

### Jika membutuhkan keputusan Manajemen

Gunakan pola yang sama melalui:

```text
cases/<nama-klien>/management/requests/
cases/<nama-klien>/management/responses/
```

### Tiga kondisi keputusan Codex

- **GREEN** — data cukup dan CS berwenang → balasan final.
- **YELLOW** — dapat dijawab dengan batasan/disclaimer → balasan aman.
- **RED** — data/otorisasi penting belum ada → jangan mengarang; minta Developer/Manajemen atau data klien.

Label ini untuk analisis internal dan tidak perlu dikirim kepada klien.

### Knowledge baru

Setiap informasi baru akan dievaluasi:

```text
Hanya berlaku untuk satu klien
→ simpan di case

Berlaku/reusable untuk layanan Webekspres
→ update knowledge_base_webekspres_v0.008.md
→ update changelog
```

Jawaban Developer juga wajib melalui pengecekan ini. Percakapan mentah Developer tidak disalin ke knowledge base; hanya hasil normalisasi yang reusable.

### Command yang perlu diingat

```text
proses kasus <nama-klien>
lanjutkan kasus <nama-klien>
bantu balas chat terbaru <nama-klien>
```

### Git

Jika Codex membuat atau memperbarui artifact repository:

```text
QC
→ git diff
→ commit file relevan
→ push origin main
```

Raw screenshot/chat di `cases/**/inbox/` tidak ikut Git secara default.

---

## Alur inti

Screenshot/chat masuk → identifikasi kasus → baca `CASE.md` → ambil knowledge relevan → GREEN/YELLOW/RED → balasan / eskalasi → QC → knowledge capture → Git sync.

## File utama

- `AGENTS.md` — instruksi/router utama Codex.
- `knowledge_base_webekspres_v0.008.md` — living knowledge base global.
- `workflows/` — SOP agent.
- `templates/` — template case dan eskalasi.
- `cases/` — state/data per klien.
- `scripts/` — helper PowerShell.

## Prinsip

Satu klien = satu folder case jangka panjang.

## Privasi

Raw screenshot/chat/credential tidak boleh dipush. `cases/**/inbox/*` di-ignore secara default.

Jika repository masih PUBLIC, jangan commit case sensitif. Ubah repository ke private sebelum menyimpan data klien yang bersifat sensitif di GitHub.
