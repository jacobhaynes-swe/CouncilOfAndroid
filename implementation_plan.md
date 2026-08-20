# Implementation Plan - Teams & Stats Expansion (Active)

This is a persistent copy of the active implementation plan for the Bananasball project, moved from the session artifacts to the repository root for continuity across agent sessions.

## Current Status
**Executing**: Domain models and Repository contracts implemented. Data Layer (Scrapers/DAOs) and UI Layer (Screens/Navigation) remaining.

## Goals
Shift focus from UI polish to data expansion by scraping `bananaball.com/teams/` and `bananaball.com/stats/`, and incorporating official YouTube channel handles.

## User Review Required
- [x] Use `@Loco.Beach.Coconuts` as official handle.
- [ ] Implement Bottom Navigation (Schedule, Teams, Stats).

## Proposed Changes

### Domain Layer (Socket) - ✅ DONE
- `Standings.kt`, `PlayerStats.kt`, `TeamRepository.kt`, `StatsRepository.kt` created.

### Data Layer (Grid) - 🚧 IN PROGRESS
- `StaticTeamProvider.kt`: Centralize handles and logos.
- `KtorTeamScraper.kt`: Scrape team list.
- `KtorStatsScraper.kt`: Scrape standings.
- `AppDatabase.kt`: Add Team and Standing tables.

### UI Layer (Tube) - ⏳ TODO
- `TeamsScreen.kt`, `StatsScreen.kt`.
- `MainScreen.kt`: Bottom navigation.

## Verification Plan
- Automated: Scraper mock tests.
- Manual: Verify "Loco Beach Coconuts" and new tabs on device.
