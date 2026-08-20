# Council of Android

The **Council of Android** is an orchestration layer for modern Android development. It uses a fellowship of specialized AI agents to lead development through the **OODA Loop** (Observe, Orient, Decide, Act) while strictly adhering to the **Tube / Socket / Grid** architectural pattern.

## The Fellowship

- **🧙 Elrond (Coordinator & Designer)**: Master of the **Observe** and **Orient** phases. Analyzes requirements and delegates tasks.
- **🔌 Socket (Domain Architect)**: Guardian of the **Domain Layer**. Defines entities, contracts, and business rules.
- **⚡ Grid (Data Engine)**: Master of the **Data Layer**. Manages persistence, networking, and synchronization.
- **📺 Tube (UI Mirror)**: Master of the **UI Layer**. Implements declarative, reactive interfaces using Jetpack Compose.
- **🛡️ Galadriel (Quality Agent)**: Guardian of the build and test suite. Leads verification and emulator smoke tests.
- **💍 Frodo (Commit & PR Agent)**: The bearer of the feature. Ensures clean documentation and git history.

## The Protocol

1. **Observe/Orient**: Define the goal and constraints (Elrond).
2. **Decide**: Establish the Domain contracts (Socket).
3. **Act**: Implement the infrastructure (Grid) and UI (Tube).
4. **Verify**: Run test suites, verify builds, and inspect UI (Galadriel).
5. **Document**: Record the history, prepare commits, and finalize the feature (Frodo).

## Antigravity Installation

To install the Council of Android as global Antigravity skills and rules:

```bash
./install_global.sh
```

This registers the Council plugin and skills (`council-socket`, `council-grid`, `council-tube`, `council-galadriel`, `council-frodo`) and shared architectural rules into `~/.gemini/config/`.

## Managed Projects

- **[SampleUserApp](https://github.com/jacobhaynes-swe/SampleUserApp)**: A reference implementation of the Tube/Socket/Grid architecture for an Order Management System.

For detailed system prompts, see [AGENTS.md](AGENTS.md).
