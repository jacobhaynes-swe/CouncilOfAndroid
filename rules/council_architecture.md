# Council of Android Architectural Standards

All Android development in the Council must strictly adhere to the **Tube / Socket / Grid** architecture and the **OODA Loop** (Observe, Orient, Decide, Act, Verify).

---

## 1. 🔌 Socket (Domain Layer - The Brain)
- **Zero Android Framework Dependencies**: Pure Kotlin only. No `android.*`, `androidx.*`, or Android lifecycle imports.
- **Entities**: Pure data classes representing core business domain models.
- **Contracts**: Interface definitions for repositories and data sources.
- **Use Cases / Interactors**: Classes encapsulating single business operations and validation logic.
- **Testability**: 100% testable with standard JUnit tests.

---

## 2. ⚡ Grid (Data Layer - The Engine)
- **Single Source of Truth (SSOT)**: Repositories and UI observe local Room database tables via Kotlin `Flow`.
- **Remote Data Sources**: Web scrapers (Ktor/Jsoup) and network clients (Retrofit) write to the local database, never directly to UI.
- **Natural Keys / SyncIDs**: Entities use client-generated UUIDs / `syncId` to avoid ID collisions.
- **Mappers**: Explicit mappings between Network DTOs, Room Entities, and Domain Models.

---

## 3. 📺 Tube (UI Layer - The Mirror)
- **100% Jetpack Compose**: Declarative UI with Material 3 styling.
- **Model-View-Intent (MVI) / UDF**:
  - `UiState`: Single immutable data class representing complete screen state.
  - `UiIntent`: Sealed hierarchy for all user events.
  - `ViewModel`: Exposes `StateFlow<UiState>` and handles intents.
- **Stateless UI**: Composables mirror the state and emit event callbacks.

---

## 4. 🛡️ Verification & Documentation
- **Galadriel**: All code must compile (`./gradlew assembleDebug`) and pass unit tests (`./gradlew test`) before declaring complete.
- **Frodo**: Provide atomic conventional commits and updated walkthroughs/PR documentation.
