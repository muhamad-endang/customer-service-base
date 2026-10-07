# CASE — Mala-HKGOLD

## Identity
- **Client**: Mala-HKGOLD (PT Ham Kwan Gold Investama) — Mala as main contact
- **Case Slug**: klien-mala-hkgold  
- **Project**: HK Gold VIP Membership App (web admin + mobile iOS/Android)
- **Domain**: hkgoldvip.com (production), staging.hkgoldvip.com (testing)
- **Primary Service**: Membership management system with tiered rewards, point accumulation/redemption, multi-branch admin, and member analytics

## Business Context
- **Company**: HK Gold (PT Ham Kwan Gold Investama) — jewelry business, founded 1918, 4th generation, 17 physical branches in Central Java + 1 online + 1 service center
- **Business Model**: Loyalty membership with point accumulation tied to purchases; annual point reset (Dec 31); tiered membership (Silver → Gold → Platinum → Titanium)
- **Key Requirement**: Support 38 store managers + 1 administrator + 1 admin center + 1 marketing account across branches; ensure point accuracy for audit trail
- **Dual Product Categories** (NEW): 
  - **Perhiasan (Jewelry)**: Regular point accumulation
  - **Berlian (Diamonds)**: Separate point calculation rules + separate reward catalog
  - Both must coexist in same system without conflict — **scope classification pending** (possible CR)

## Contract Terms (MOU signed 11 May 2026)
- **Client Representative**: Fia Fiatul Maula (Vice Retail Manager, PT Ham Kwan Gold Investama)
- **Payment Structure**: 50% DP (at start), 50% after UAT/before go-live
- **Warranty**: 3 months bug fix + 1 year maintenance (if hosting via Webekspres)
- **UAT Period**: 14 working days
- **Key Governance**: Change Request (CR) process mandatory for out-of-scope changes; Apple/Google publication not covered by Webekspres (client responsibility)

## State
- **Lifecycle**: UAT (User Acceptance Testing) in progress
- **Operational Status**: ACTIVE — app live for testing but critical workflow blocked
- **Current Critical Issue**: **Point Redemption Failure** — token validation error preventing reward redemption (reported 07/10/2026 17:11)
- **Last Processed Evidence**: WhatsApp chat extract ending 07/10/2026 17:24 (10 detailed issues + questions from Mala)
- **Last Updated**: 2026-10-07

## Key Facts
- **Scope Approved**: Proposal covers web admin panel + Android + iOS apps with features: member registration, point management (upload CSV), reward catalog, tiered system, branch management, audit trail
- **Test Infrastructure**: Android available via Google Play internal test; iOS pending Apple Developer approval (applied ~18 Sept, estimated ~2 Oct, now **overdue** as of 07 Oct)
- **Test Credentials**: Email hkgoldmember02@gmail.com; test accounts: Silver (2608-0001), Gold (2608-8351), Platinum (2608-6284), Titanium (2608-1257), pwd: password123
- **User Roles Planned**: Admin Pusat (1) → Administrator (1+1 backup) → Store Manager (38) → Marketing (1) → Customer; each with specific dashboard views and permissions
- **Member Data Required**: Email (immutable, identity), Name, Address, Phone, DOB, KTP upload (with verification), approval workflow for phone changes, 7-day account deletion grace period
- **Business Rules Confirmed**: Point reset annually on 31 Dec; QR voucher valid 30 min; reward redemption requires OTP; member geofence for marketing login (~150m); draft landing page auto-saves

## Confirmed Decisions (from WhatsApp alignment)
- Marketing account: device-based restriction (registered device only), no time-of-day limit needed
- Store Manager redeem: QR scan or code input → OTP verification → reward approval
- Account deletion: 7-day non-active grace period; member can cancel; email/phone not reusable during grace period
- Annual reset: occurs 31 Dec; tier resets to Silver; riwayat poin tetap tersimpan (not auto-deleted, can configure 1–2 year retention)
- Tier benefit display: standardized templates; details configured per membership level

## Pending / Open Issues (Detailed)
1. **BLOCKER — Token Validation on Redemption** (07/10 17:11): QR scan fails with "Token tidak valid", code input fails, OTP request fails even within 30-min window; tested multiple times fresh codes—needs immediate dev investigation
2. Reward photo display missing—backend image storage config issue, photos still saved server-side
3. Reward catalog: SKU with spaces (e.g., "TAS COKLAT 1") fails to load; workaround exists (use hyphens) but should be fixed
4. Point batch update: Jenis Transaksi field should auto-populate from CSV import, not require manual input
5. Riwayat poin shows generic "Transaksi" label instead of specific type (Perhiasan, Berlian, Penukaran Hadiah, etc.)
6. Duplicate notification triggered when member cancels QR redemption session
7. **iOS App Store Release Delayed**: Apple Developer Program approval pending >14 days; no clear ETA; blocking final cross-platform testing
8. Year-end point expiry messaging: no UI yet to notify members of 31 Dec annual reset policy
9. Administrator role granularity: client wants ability to configure dashboard menu access per individual user, not just per role type
10. Marketing account geofence enforcement: 150m radius blocking off-site testing; temporary 2hr override available but needs validation

## Last Action
- Developer team provided technical clarification on 8 of Mala's findings (08/09 and 07/10)
- Mala sent follow-up batch of 10 new issues + clarifications on 07/10 late afternoon
- CS acknowledged 07/10 16:12: "akan kami rekap dan koordinasikan dengan Developer"

## Next Action
1. **IMMEDIATE**: Create Developer Request v0.001 to recap and prioritize token validation bug (blocking entire UAT)
2. Dev to confirm ETA for critical fixes (token, photos, batch import auto-fill) within 24h
3. Escalate iOS App Store delay with dev team and Apple contact timeline
4. Prepare UAT fix-validation checklist; schedule walkthrough after token issue resolved
5. If dev cycle >2 days, provide interim update to Mala with partial roadmap + blocking issue status

## References
- Developer Request/Response: *pending creation v0.001*
- Management Request/Response: none yet (scope/timeline aligned via Padli + Sultan)
- Active Project Documents: 
  - Proposal (inbox/Proposal Klien/) — scope definition
  - DATA HK GOLD.docx — company profile + 17 branch locations
  - Pembagian Dashboard User dan Fungsinya.docx — role access matrix
  - Data registrasi member — requirements for customer fields + app features
  - WhatsApp chat log (extracted) — detailed UAT findings + client Q&A

## Notes
- Mala is technically engaged, asks detailed questions, expects quick follow-up (3–4h response SLA observed)
- Point redemption blocker is blocking entire membership workflow—high business impact
- iOS launch dependency slowing cross-platform validation; recommend daily status check until approved
- Many issues are minor (UX polish, data labeling) but token validation is critical path
- Client provided comprehensive documentation; use as source of truth for feature scope vs. current build

