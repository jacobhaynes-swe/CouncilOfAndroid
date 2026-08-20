# Standard: Grid (Data) SSOT Pattern

All data layers must enforce the **Single Source of Truth (SSOT)**.

## 1. Reactive Reads
The UI and Repository must ONLY observe the Local Database (Room). 
- Network calls or scrapers update the Database.
- The Database emits the update to the UI via `Flow`.

## 2. SyncIDs (UUIDs)
All entities must have a client-side generated `syncId: String`.
- This acts as the "Natural Key" for identity resolution during sync.
- Prevents duplication when server-side or scraped IDs are assigned.

## 3. Atomicity
Use `@Transaction` for any operation involving multiple tables (e.g., creating a Team and its Players/Standings).
