---
title: "Systemen"
weight: 6
draft: false
menu: main
type: page
featured_image: "/images/background.webp"
---

###### afbeelding van: [W.I.S.V. 'Christiaan Huygens'](https://photos.ch.tudelft.nl/v2wkas-benelux-algorithm-programming-contest)

Deze pagina beschrijft de huidige plannen voor de programmeeromgeving die beschikbaar zal zijn voor elk BAPC 2026-team.

Laatste update: 30 augustus 2026

## Documentation / Specification / Reference material

The following reference materials will be available on the teams’ workstations through the browser:

- [C reference from cppreference.com](https://en.cppreference.com/c)
- [C++ reference from cppreference.com](https://en.cppreference.com/cpp)
- [Python 3.11.11 documentation](https://docs.python.org/release/3.11.11/)
- [Java® Platform, Standard Edition & Java Development Kit Version 21 API Specification](https://docs.oracle.com/en/java/javase/21/docs/api/)
- [Kotlin Language Documentation 2.1.20 (As PDF)](https://raw.githubusercontent.com/JetBrains/kotlin-web-site/e3ec93b63240397ae404e9c492b7dadaf2e67625/assets/kotlin-reference.pdf)
- [DOMjudge Team Manual (As PDF)](https://www.domjudge.org/docs/manual/9.0/team.html)

## Systemen

Met dank aan [GEHACK](https://os.gehack.nl?utm_source=chatgpt.com)

> Wil je deze omgeving zelf draaien? Bekijk dan de [GEHACK Live Image](https://os.gehack.nl/build.html?utm_source=chatgpt.com).

### Bureaublad

| Onderdeel             | Beschrijving                                                                                                                                                        |
| --------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Besturingssysteem     | NixOS 26.05                                                                                                                                                         |
| Bureaubladomgeving    | GNOME (Wayland)                                                                                                                                                     |
| Browser               | Firefox                                                                                                                                                             |
| Toetsenbordindelingen | US en NL (wisselen via de bovenbalk van GNOME)                                                                                                                      |
| Shell                 | Standaard Bash; Zsh is ook geïnstalleerd, inclusief autosuggesties en syntaxiskleuring                                                                              |
| Touchpad              | Druk op Super+T (of de touchpadtoets van de laptop) of voer `Toggle Trackpad` uit om het touchpad tijdens het typen uit te schakelen en daarna weer in te schakelen |

### Programmeertalen en compilers

| Taal   | Toolchain           | Opmerkingen                                                     |
| ------ | ------------------- | --------------------------------------------------------------- |
| C      | GCC                 | Standaard `gnu17`; `gdb` en `cmake` inbegrepen                  |
| C++    | GCC (g++)           | Standaard `gnu++20`; `gdb` en `cmake` inbegrepen                |
| Python | CPython 3 en PyPy 3 | Beide interpreters zijn geïnstalleerd; PyPy voor extra snelheid |
| Java   | JDK 21              | `JAVA_HOME` is vooraf ingesteld                                 |

### Hulpmiddelen voor compileren

Vooraf geconfigureerde wrappers die compileren met geschikte compileropties voor programmeerwedstrijden, zodat je die niet zelf hoeft te onthouden. Elk commando verwacht de basisnaam van het bronbestand.

| Commando           | Uitvoering                                                             |
| ------------------ | ---------------------------------------------------------------------- |
| `mygcc sol`        | `gcc -std=gnu17 -Wall -O2 -static` → compileert `sol.c` naar `sol`     |
| `mygpp sol`        | `g++ -std=gnu++20 -Wall -O2 -static` → compileert `sol.cpp` naar `sol` |
| `mypython sol.py`  | Voert het bestand uit met de Python 3-interpreter van PyPy             |
| `myjavac Sol.java` | `javac` (JDK 21, UTF-8)                                                |
| `mykotlinc Sol.kt` | `kotlinc` (JDK 21) → genereert JVM-klassen in de huidige map           |

```
$ mygpp solution       # compileert solution.cpp naar ./solution
$ ./solution < in      # voert het programma uit
```

### Editors en IDE's

Kies de editor waarmee je het snelst werkt — ze zijn allemaal geïnstalleerd.

- VS Code — met extensies voor C/C++ (inclusief CMake Tools), Python en Java. Bouw- en debugtaken zijn vooraf ingesteld voor C/C++ (`g++ -std=c++23` / `gcc -std=c17`, `gdb`). AI-/Copilot-functies, de welkomstpagina en updatemeldingen zijn uitgeschakeld. De Vim-extensie is geïnstalleerd, maar standaard uitgeschakeld. Voer Vim: Toggle Vim Mode uit via het opdrachtenpalet (`Ctrl+Shift+P`) om deze in te schakelen.
- Neovim — met language servers, syntaxiskleuring via Treesitter en een bestandsboom (zie hieronder).
- Vim, Emacs, nano, gedit en Geany
- JetBrains — PyCharm (Python), IntelliJ IDEA (Java en Kotlin), CLion (C/C++)
- Eclipse en NetBeans (Java)
- Code::Blocks (C/C++)

### Editorplug-ins

Dit zijn de enige geïnstalleerde plug-ins. Tijdens de wedstrijd kun je geen extensies installeren of bijwerken.

#### VS Code-extensies

| Extensie                  | ID                          | Voor                                                          |
| ------------------------- | --------------------------- | ------------------------------------------------------------- |
| C/C++                     | `ms-vscode.cpptools`        | C en C++: IntelliSense en GDB-debugging                       |
| CMake Tools               | `ms-vscode.cmake-tools`     | C en C++: beheer van CMake-projecten                          |
| Python                    | `ms-python.python`          | Python: taalondersteuning                                     |
| Pylance                   | `ms-python.vscode-pylance`  | Python: language server en IntelliSense                       |
| Python Debugger           | `ms-python.debugpy`         | Python: debugging                                             |
| Language Support for Java | `redhat.java`               | Java: taalondersteuning                                       |
| Debugger for Java         | `vscjava.vscode-java-debug` | Java: debugging                                               |
| Test Runner for Java      | `vscjava.vscode-java-test`  | Java: tests uitvoeren en debuggen                             |
| Vim                       | `vscodevim.vim`             | Standaard uitgeschakeld; inschakelen via Vim: Toggle Vim Mode |

Er is geen Kotlin-extensie voor VS Code. Gebruik IntelliJ IDEA of Neovim voor Kotlin.

#### Neovim-plug-ins

| Plug-in                | Functie                                                                                                   |
| ---------------------- | --------------------------------------------------------------------------------------------------------- |
| LSP (`nvim-lspconfig`) | Language servers: `clangd` (C/C++), `pyright` (Python), `jdtls` (Java), `kotlin-language-server` (Kotlin) |
| `nvim-treesitter`      | Syntaxiskleuring en inspringing voor C, C++, Python, Java en Kotlin                                       |
| `neo-tree`             | Bestandsboom                                                                                              |
| `which-key`            | Toont beschikbare sneltoetsen terwijl je typt                                                             |
| `nvim-web-devicons`    | Pictogrammen voor bestandstypen                                                                           |

De leader-toets is `Space`. De vooraf ingestelde sneltoetsen zijn:

| Toetsen               | Functie                               |
| --------------------- | ------------------------------------- |
| `Space` → `e`         | Bestandsboom tonen/verbergen          |
| `g` → `d`             | Naar definitie gaan                   |
| `g` → `r`             | Verwijzingen weergeven                |
| `K`                   | Documentatie bij de cursor tonen      |
| `Space` → `r` → `n`   | Symbool hernoemen                     |
| `Space` → `c` → `a`   | Codeactie uitvoeren                   |
| `[` → `d` / `]` → `d` | Vorige/volgende diagnostische melding |

#### JetBrains-IDE's

PyCharm, IntelliJ IDEA en CLion bevatten alleen hun standaard meegeleverde plug-ins. IntelliJ IDEA heeft JDK 21 vooraf ingesteld als project-SDK, zodat nieuwe Java- en Kotlin-projecten direct kunnen worden gebouwd.

### Commandoregelprogramma's

Voor debugging, profilering en de gebruikelijke shellhulpmiddelen:

`gdb` · `valgrind` · `strace` · `cmake` · `git` · `tmux` · `screen` · `shellcheck` · `btop` · `htop` · `iotop` · `wget` · `curl` · `zip` / `unzip` / `7z`

### Oplossingen indienen

Het commandoregelprogramma van DOMjudge voor het indienen van oplossingen is geïnstalleerd en vooraf geconfigureerd voor de juryomgeving van de wedstrijd. Je hoeft geen URL in te stellen.

```
$ submit solution.cpp        # dient de oplossing in voor de huidige opgave
$ submit -p A solution.cpp   # dient de oplossing expliciet in voor opgave A
```

Je kunt oplossingen ook indienen via de DOMjudge-webinterface in Firefox. Deze is ingesteld als startpagina en staat als eerste bladwijzer op de werkbalk.

### Afdrukken

De wedstrijdprinter, PSGEWIS1, is ingesteld als standaardprinter. Je kunt vanuit elke toepassing afdrukken met `Ctrl+P`, of via de terminal:

```
$ lp solution.cpp
```

### Extra's

| Onderdeel       | Beschrijving                                                                                                                                                                                                          |
| --------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Offline DevDocs | Een volledige offlinekopie van [DevDocs](https://devdocs.io/?utm_source=chatgpt.com) is beschikbaar via `https://docs.gehack.nl`. Deze staat ook op de bladwijzerwerkbalk van Firefox. Internettoegang is niet nodig. |
| Spelletjes      | GNOME-spellen (Sudoku, Mijnen, Mahjongg enz.), SuperTux, SuperTuxKart, Neverball en klassieke terminalspelletjes                                                                                                      |

### Goed om te weten

- **Tijdens de wedstrijd is er geen internettoegang.** De computer kan wel verbinding maken met de juryomgeving, de DevDocs-mirror en de printer. Andere computers op het wedstrijdnetwerk zijn geblokkeerd.
- **Firefox is beperkt.** Je kunt geen extensies installeren en de startpagina is vast ingesteld op de juryomgeving.
- **USB-apparaten die je aansluit nadat de computer is opgestart, worden geblokkeerd.** Vraag een GEHACK-vrijwilliger om hulp als je iets wilt aansluiten.
- **Wifi en Bluetooth zijn uitgeschakeld.**
- **Je scherm en webcam worden gestreamd naar de wedstrijdorganisatie.** -** Nix-commando's zijn uitgeschakeld** voor het wedstrijdaccount. Alles wat je nodig hebt, is al geïnstalleerd.
