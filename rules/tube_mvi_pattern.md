# Standard: Tube (UI) MVI Pattern

All UI layers in the Fellowship must follow this Unidirectional Data Flow (UDF) pattern.

## 1. State Model
The State must be a single, immutable data class representing the entire screen.
```kotlin
data class ScreenState(
    val items: List<Item> = emptyList(),
    val isLoading: Boolean = false,
    val error: String? = null
)
```

## 2. Intent Model
All user actions must be dispatched as a sealed class/interface of Intents.
```kotlin
sealed interface ScreenIntent {
    data class OnItemClicked(val id: String) : ScreenIntent
    data object OnRefresh : ScreenIntent
}
```

## 3. ViewModel Handling
The ViewModel consumes Intents and exposes a `StateFlow`.
- Use `stateIn` to convert cold flows to hot state flows.
- Use `viewModelScope` for side effects.
- Never call Repositories directly from UI; always use Use Cases / ViewModels.
