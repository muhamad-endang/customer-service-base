# Developer Request — HK Gold VIP Membership App UAT Issues Recap

**Request ID**: UAT-MALA-001  
**Created**: 2026-10-07  
**From**: PT Webekspres Customer Service (Besti)  
**To**: Developer Team (Padli, Sultan, Kriss, Endang)  
**Status**: Awaiting Response  
**Priority**: CRITICAL (1 blocker), HIGH (7), MEDIUM (2)

---

## Executive Summary

Mala (HK Gold client) has reported **10 distinct issues during UAT** (Phase: active testing). **One is a critical blocker** preventing the entire point redemption workflow from functioning. Others are UX/data accuracy issues. Recommend immediate triage, priority confirmation, and ETA commitment within 24 hours.

---

## Critical Blocker: Point Redemption Token Validation Failure

**Issue ID**: BLOCK-001  
**Severity**: CRITICAL — prevents members from redeeming rewards  
**Reported**: 07/10/2026 17:11 (Mala testing in dashboard)  
**Description**:  
When store manager attempts to process reward redemption (via QR scan or manual code input), the system rejects the token with error "Token tidak valid" even though:
- QR/code is freshly generated from member's app
- Request is within 30-minute validity window
- OTP request also fails
- Multiple fresh attempts all fail

**Test Scenario**:
1. Member initiates redemption request in mobile app
2. Member's QR + code displayed on phone
3. Store Manager scans QR (or manually enters code) in dashboard's "Redeem Poin → Antrean Kupon → Verifikasi & Scan Token"
4. System returns: "Token tidak valid"
5. Manual code entry: same error
6. OTP request to member's WhatsApp: request fails silently

**Suspected Cause** (from prior chat context):  
- Token generation/validation logic may not be properly syncing between mobile app and backend API
- Possible time sync issue between client and server
- Session state mismatch between QR generation and validation endpoint

**Required Action**:
- Immediate code review: check token lifecycle (generation → validation → expiry)
- Validate API endpoint receiving scan/code input
- Confirm OTP gateway connectivity
- Provide root cause + fix ETA by end of business day

**Blocker Until**: Token validation restored + Mala confirms 3+ successful redemption cycles in testing

---

## High Priority Issues (7)

### Issue #1: Reward Photo Display Missing

**ID**: IMG-001 | **Severity**: HIGH | **Reported**: 07/10 10:50  
**Description**: Reward images not rendering in member app or dashboard catalog. Photos are uploaded and stored server-side but not displayed.  
**Root Cause** (from dev response 07/10 16:34): Image storage path configuration issue; images are retained on server.  
**Expected Fix**: Path/config correction; images auto-display after fix (no re-upload needed).  
**Mala's Impact**: Cannot validate reward catalog UI/UX; affects member trust if rewards appear as blank.

---

### Issue #2: Reward SKU with Spaces Causes "Tidak Ditemukan"

**ID**: SKU-001 | **Severity**: HIGH | **Reported**: 07/10 10:50  
**Description**: Reward catalog entries with spaces in SKU field (e.g., "TAS COKLAT 1", "BOX PERHIASAN") fail to open with error "Reward tidak ditemukan".  
**Workaround**: Use hyphens (TAS-COKLAT-1); reward displays only after branch stock is filled.  
**Root Cause**: SKU parsing likely strips/escapes spaces incorrectly.  
**Scope**: Fix SKU validation to allow spaces; test with existing reward entries.

---

### Issue #3: Point Batch Import - Manual Jenis Transaksi Entry

**ID**: BATCH-001 | **Severity**: HIGH | **Reported**: 07/10 12:38  
**Description**: When uploading batch point updates (CSV), "Tanggal Transaksi" and "Jenis Transaksi" fields require manual re-entry in the dashboard form, even though these values already exist in the source CSV.  
**Client Concern**: High error risk; staff manually retyping data defeats purpose of batch automation.  
**Required Behavior**: Auto-populate Tanggal Transaksi and Jenis Transaksi from CSV, matching current behavior for Nominal Pembelian.  
**Scope**: Update batch import parser to extract and prefill these fields.

---

### Issue #4: Riwayat Poin Label Shows Generic "Transaksi"

**ID**: LABEL-001 | **Severity**: HIGH | **Reported**: 07/10 12:38  
**Description**: Member's reward history in mobile app displays all entries labeled "Transaksi" instead of specific type (Perhiasan, Berlian, Penukaran Hadiah, etc.).  
**Impact**: Member cannot distinguish point sources; confusing for personal finance tracking.  
**Scope**: Update history display to show transaction type based on batch upload jenis_transaksi field.

---

### Issue #5: Duplicate Notification on QR Cancellation

**ID**: NOTIF-001 | **Severity**: HIGH | **Reported**: 07/10 10:33  
**Description**: When member cancels QR redemption session in app, system sends duplicate notifications.  
**Scope**: Review notification trigger logic; remove redundant fire events.

---

### Issue #6: iOS App Store Release Indefinitely Delayed

**ID**: IOS-001 | **Severity**: HIGH | **Reported**: ongoing (applied ~18 Sept, ETA ~2 Oct, now 7 Oct)  
**Description**: Apple Developer Program approval has exceeded estimated 14-day window with no update. App cannot be distributed to testers' iPhones.  
**Current Status** (as of 07/10): Pending Apple verification of account/documentation.  
**Impact**: 
- Cross-platform UAT cannot validate iOS-specific behavior
- Launch timeline at risk if approval continues to stall
- Client cannot provide iOS testing feedback

**Required Action**:
- Confirm application status with Apple (check developer account portal)
- If no movement in 2 more days, escalate to Apple support or consider resubmission
- Provide daily status update to Mala (high visibility item)
- ETA commitment + mitigation plan if approval delays beyond 10 Oct

---

### Issue #7: Year-End Point Reset Notification Not Yet Implemented

**ID**: NOTIFY-002 | **Severity**: HIGH | **Reported**: 07/10 13:51  
**Description**: No UI element alerts members that points reset to 0 on 31 Dec each year. New members (e.g., joining in Nov) may not understand policy.  
**Requirement** (per dev chat 17/09): Temporary solution is display notification on login dashboard + mention in FAQ.  
**Pending Confirmation** from dev: 
- Should notification appear as persistent banner, modal popup, or one-time onboarding card?
- Should it appear daily in Nov/Dec or only once per member per year?

**Scope**: Design + implement end-of-year point reset policy notification.

---

## Medium Priority Issues (2)

### Issue #8: Administrator Permission Granularity Per User

**ID**: PERM-001 | **Severity**: MEDIUM | **Reported**: 07/10 16:25  
**Description**: Current system assigns dashboard menu access by role only (Superadmin, Administrator, Store Manager, Marketing). Client wants to configure access granularly per individual user account (e.g., "Admin A sees X menus, Admin B sees Y menus").  
**Current Design**: Fixed permissions per role type.  
**Scope**: Confirm if this is a new scope addition or if it was in original proposal. If approved scope, design a per-user permission matrix.

---

### Issue #9: Marketing Account Geofence Preventing Off-Site Testing

**ID**: GEO-001 | **Severity**: MEDIUM | **Reported**: 07/10 12:50  
**Description**: Marketing account login restricted to ~150m radius from registered store location. Prevents remote testing and off-site access. Temporary 2-hour admin override exists but needs validation.  
**Current Workaround**: Admin can grant 2-hour temporary access.  
**Scope**: 
- Confirm geofence radius is intended (security feature)
- Validate 2-hour override mechanism works as expected
- If client requests location flexibility, discuss business security implications

---

## Open Questions Requiring Clarification

### From Mala's 07/10 Messages:

1. **Batch Point Update Timestamp**: When import happens on day X at time Y, should riwayat timestamp reflect upload time or original transaksi date from CSV? (Currently: appears to be upload time, not matching transaction date in app vs. dashboard)

2. **Reward Redemption Cancellation**: Client prefers members can cancel **within N minutes** (with grace period) + auto-refund points. Should cancellation workflow be:
   - a) Member-initiated, instant refund if within grace period
   - b) Member initiates → Admin approves/rejects on dashboard

3. **Admin Role Permission Configuration**: Is the per-user permission granularity approved scope (budget/timeline), or a post-UAT nice-to-have?

4. **Marketing Device Registration**: What metadata is required for device registration? (MAC address? Device ID? Fingerprint?) Current flow unclear to client.

---

## Recommended Response Timeline

| Item | Owner | Target Date | Notes |
|------|-------|-------------|-------|
| BLOCK-001 Root cause + fix ETA | Dev Team | EOD 07/10 | Critical path |
| IMG-001 Fix deployed | Dev Team | 08/10 AM | Unblocks visual UAT |
| SKU-001 Fix + test | Dev Team | 08/10 | Minor fix, high impact |
| BATCH-001 Auto-fill implementation | Dev Team | 09/10 | Medium complexity |
| LABEL-001 History display fix | Dev Team | 08/10 | Data layer only |
| NOTIF-001 Duplicate removal | Dev Team | 08/10 | Low effort |
| IOS-001 Apple escalation | Dev Team | 08/10 | Requires manual outreach |
| NOTIFY-002 UX design + feedback | Dev + Besti | 09/10 | Needs client approval on UX |
| PERM-001 Scope clarification | Padli + Client (Besti) | 08/10 | Scope vs. implementation |
| GEO-001 Testing + validation | Dev Team | 08/10 | May not need fixes |

---

## Important: Dual Business Logic Requirement (Jewelry vs Diamonds)

**Status**: Identified in discovery phase (Mala asked about this in diskusi.md)  
**Scope**: **POTENTIAL CHANGE REQUEST** — currently NOT explicitly listed in original proposal

**Requirement**: 
- **Category 1 - Perhiasan (Jewelry)**: Regular point accumulation + redemption
- **Category 2 - Berlian (Diamonds)**: Separate point calculation rules + separate reward catalog
- Both categories must function in **same app/system** without conflict
- Point calculation, tier advancement, redemption rewards differ between categories

**Questions from Client**:
- Can two mechanisms coexist in one app without conflicts?
- What's Webekspres' recommendation for architecture?
- Is this in scope or requires Change Request process?

**Impact on UAT**: 
- This requirement may not be fully implemented yet
- May explain why some data/reward structure questions are unresolved in chat
- **Action**: Confirm scope classification (in-scope vs CR) before finalizing fixes for other issues

**References**: Diskusi.md (Mala Emas/Dokumentasi folder)

---

## Attachments / References

- **Signed MOU** (Mala Emas/Dokumentasi/file client/Surat Perjanjian...TTD.pdf):
  - Effective Date: 11 Mei 2026
  - Signatories: Muhamad Endang Supriyadi (Webekspres Manager) ↔ Fia Fiatul Maula (HK Gold Vice Retail Manager)
  - Payment: 50% DP (at project start), 50% (after UAT, before go-live)
  - Warranty: 3 months bug fix + 1 year maintenance (if hosting via Webekspres)
  - UAT Period: 14 working days
  - **Important**: Change Request (CR) process mandatory for out-of-scope; Apple/Google publication not covered

- **WhatsApp Chat Excerpt**: Full conversation 18/05–07/10/2026 (archived in case/inbox/)
- **Approved Scope Docs** (Mala Emas/Dokumentasi/): 
  - Proposal Bundle (PDF)
  - Role Access Matrix: Admin Pusat (1) → Administrator (1+1 backup) → Store Manager (38) → Marketing (1) → Customer
  - Member Registration Data requirements + feature list
  - Project Timeline
  - Diskusi.md (business logic Q&A including dual-category point system)

- **Current CASE.md**: Updated with UAT status + business context
- **Entity Relationship Diagram** (erd.prisma, er_diagram.png): Database schema reference

---

## Next Steps (for CS/Project Management)

1. Share this request with dev team via WhatsApp group + email
2. Request response within 24h confirming priority + fix ETA
3. Schedule short sync call (15 min) if any clarifications needed
4. Prepare daily status update template for Mala while fixes are in progress
5. Once BLOCK-001 is resolved, guide Mala through 3-cycle redemption validation test

**Prepared By**: Besti (PT Webekspres Customer Service)  
**Date**: 2026-10-07  
**Status**: Ready for Developer Handoff
