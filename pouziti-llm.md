Po úvodním brainstormingu (přes Gemini WebUI) jsem použil gemini-cli a toto jsou statistiky použití tokenů v dvou sessions které jsem měl:

```
╭────────────────────────────────────────────────────────────────────────────────────╮
│                                                                                    │
│  Agent powering down. Goodbye!                                                     │
│                                                                                    │
│  Interaction Summary                                                               │
│  Session ID:                 5d7d43b8-1d60-405e-b03e-979e5704be67                  │
│  Tool Calls:                 20 ( ✓ 20 x 0 )                                       │
│  Success Rate:               100.0%                                                │
│  User Agreement:             100.0% (20 reviewed)                                  │
│  Code Changes:               +132 -202                                             │
│                                                                                    │
│  Performance                                                                       │
│  Wall Time:                  2h 5m 47s                                             │
│  Agent Active:               5m 24s                                                │
│    » API Time:               4m (74.0%)                                            │
│    » Tool Time:              1m 24s (26.0%)                                        │
│                                                                                    │
│                                                                                    │
│  Model Usage                                                                       │
│  Use /model to view model quota information                                        │
│                                                                                    │
│  Model                           Reqs  Input Tokens   Cache Reads Output Tokens    │
│  ────────────────────────────────────────────────────────────────────────────────  │
│  gemini-3.5-flash                  24     1,207,156     1,019,707         8,158    │
│    ↳ main                          24     1,207,156     1,019,707         8,158    │
│  To resume this session: gemini --resume 5d7d43b8-1d60-405e-b03e-979e5704be67      │
╰────────────────────────────────────────────────────────────────────────────────────╯
```

```
╭────────────────────────────────────────────────────────────────────────────────────╮
│                                                                                    │
│  Agent powering down. Goodbye!                                                     │
│                                                                                    │
│  Interaction Summary                                                               │
│  Session ID:                 582fcad0-3740-4b91-8995-5fede76f8223                  │
│  Tool Calls:                 32 ( ✓ 26 x 6 )                                       │
│  Success Rate:               81.3%                                                 │
│  User Agreement:             81.3% (32 reviewed)                                   │
│  Code Changes:               +87 -2                                                │
│                                                                                    │
│  Performance                                                                       │
│  Wall Time:                  38m 57s                                               │
│  Agent Active:               16m 31s                                               │
│    » API Time:               7m 29s (45.4%)                                        │
│    » Tool Time:              9m 1s (54.6%)                                         │
│                                                                                    │
│                                                                                    │
│  Model Usage                                                                       │
│  Use /model to view model quota information                                        │
│                                                                                    │
│  Model                           Reqs  Input Tokens   Cache Reads Output Tokens    │
│  ────────────────────────────────────────────────────────────────────────────────  │
│  gemini-3.1-flash-lite             12        50,757             0           597    │
│    ↳ utility_router                12        50,757             0           597    │
│  gemini-3.5-flash                  37     1,769,801     1,481,167         9,965    │
│    ↳ main                          37     1,769,801     1,481,167         9,965    │
│  To resume this session: gemini --resume 582fcad0-3740-4b91-8995-5fede76f8223      │
╰────────────────────────────────────────────────────────────────────────────────────╯
```

Když se koukám na <https://aistudio.google.com/spend>, stálo mě to 87.33 CZK.
