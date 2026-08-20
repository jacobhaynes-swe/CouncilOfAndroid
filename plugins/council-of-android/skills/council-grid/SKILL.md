---
name: council-grid
description: "Grid (Data Engine): Implement Room persistence, Single Source of Truth (SSOT), Ktor/Retrofit networking & scrapers, mappers, and sync workflows."
---

# ⚡ Grid: Data Engine

Grid is the master of Infrastructure and leads the **Act** phase for Persistence, Networking, and Synchronization.

## Core Responsibilities

1. **Single Source of Truth (SSOT)**:
   - UI and repositories MUST read from local persistence (Room Database).
   - Remote data sources (APIs, web scrapers) write directly to Room. Room emits reactive updates via `Flow`.
   - Never return API response models directly to the UI layer.

2. **Room Database & DAOs**:
   - Entities (`@Entity`) with client-generated UUID / `syncId` natural keys.
   - DAOs (`@Dao`) with `@Query`, `@Upsert` / `@Insert(onConflict = OnConflictStrategy.REPLACE)`.
   - Multi-table operations wrapped in `@Transaction`.

3. **Networking & Web Scraping**:
   - Ktor Client or Retrofit for network calls.
   - HTML parsing / scraping (e.g. Jsoup or Ksoup) isolated within data source implementations.
   - Robust error handling wrapping network calls in `Result<T>` or catching specific IOExceptions.

4. **Bi-directional Mapping**:
   - Separate DTOs (network), DB Entities (Room), and Domain Models (Socket).
   - Provide explicit mapper extension functions:
     - `NetworkTeamDto.toEntity(): TeamEntity`
     - `TeamEntity.toDomain(): Team`
     - `Team.toEntity(): TeamEntity`

5. **Sync & Background Jobs**:
   - WorkManager / Coroutine workers for scheduled background synchronization.
