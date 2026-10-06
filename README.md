# Customer Service Base — PT Webekspres Teknologi Indonesia

Workspace Codex + VS Code untuk pekerjaan Customer Service Webekspres.

## Alur inti
Screenshot/chat masuk → identifikasi kasus → baca `CASE.md` → ambil knowledge relevan → GREEN/YELLOW/RED → balasan / eskalasi → QC → knowledge capture → Git sync.

## File utama
- `AGENTS.md` — instruksi/router utama Codex.
- `knowledge_base_webekspres_v0.008.md` — living knowledge base global.
- `workflows/` — SOP agent.
- `templates/` — template case dan eskalasi.
- `cases/` — state/data per klien.
- `scripts/` — helper PowerShell.

## Penggunaan harian
1. Buat case:
   `./scripts/new-case.ps1 -Slug triply -ClientName "Triply Tour ID"`
2. Taruh screenshot terbaru di:
   `cases/triply/inbox/`
3. Di Codex:
   `proses kasus triply`
4. Jika perlu Developer, gunakan request yang dibuat di `developer/requests/`.
5. Setelah response Developer masuk:
   `lanjutkan kasus triply`

## Prinsip
Satu klien = satu folder case jangka panjang.

## Privasi
Raw screenshot/chat/credential tidak boleh dipush. `cases/**/inbox/*` di-ignore secara default.

Jika repository masih PUBLIC, jangan commit case sensitif. Ubah repository ke private sebelum menyimpan data klien yang bersifat sensitif di GitHub.
