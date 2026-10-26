---
title: "Systèmes"
weight: 6
draft: false
menu: main
type: page
featured_image: "/images/background.webp"
---

###### image de : [W.I.S.V. 'Christiaan Huygens'](https://photos.ch.tudelft.nl/v2wkas-benelux-algorithm-programming-contest)

Cette page décrit les plans actuels concernant l'environnement de programmation qui sera mis à la disposition de chaque équipe du BAPC 2026.

Dernière mise à jour : 26 oct 2026

## Documentation / Spécifications / Matériel de référence

Les documents de référence suivants seront disponibles sur les postes de travail des équipes via le navigateur :

- [Référence du langage C sur cppreference.com](https://fr.cppreference.com/c)
- [Référence du langage C++ sur cppreference.com](https://fr.cppreference.com/cpp)
- [Documentation Python 3.11.11](https://docs.python.org/release/3.11.11/)
- [Spécification de l'API Java® Platform, Standard Edition & Java Development Kit, version 21](https://docs.oracle.com/en/java/javase/21/docs/api/)
- [Documentation du langage Kotlin 2.1.20 (au format PDF)](https://raw.githubusercontent.com/JetBrains/kotlin-web-site/e3ec93b63240397ae404e9c492b7dadaf2e67625/assets/kotlin-reference.pdf)
- [Manuel des équipes DOMjudge (au format PDF)](https://www.domjudge.org/docs/manual/9.0/team.html)

## Systèmes

**###### Avec nos remerciements à [GEHACK](https://os.gehack.nl)**

> Vous souhaitez utiliser vous-même cet environnement ? Consultez [l’image Live de GEHACK](https://os.gehack.nl/build.html).

### Bureau

|                         |                                                                                                                                                                              |
| ----------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Système d’exploitation  | NixOS 26.05                                                                                                                                                                  |
| Environnement de bureau | GNOME (Wayland)                                                                                                                                                              |
| Navigateur              | Firefox                                                                                                                                                                      |
| Dispositions du clavier | US et NL (basculement depuis la barre supérieure de GNOME)                                                                                                                   |
| Shell                   | Bash par défaut ; Zsh est également installé, avec suggestions automatiques et coloration syntaxique                                                                         |
| Pavé tactile            | Appuyez sur Super+T (ou sur la touche du pavé tactile de l’ordinateur portable), ou exécutez `Toggle Trackpad`, pour le désactiver pendant la saisie et le réactiver ensuite |

### Langages et compilateurs

| **Langage** | **Chaîne d’outils** | **Remarques**                                                                               |
| ----------- | ------------------- | ------------------------------------------------------------------------------------------- |
| C           | GCC                 | Standard `gnu17` ; `gdb` et `cmake` inclus                                                  |
| C++         | GCC (g++)           | Standard `gnu++20` ; `gdb` et `cmake` inclus                                                |
| Python      | CPython 3 et PyPy 3 | Les deux interpréteurs sont installés ; PyPy est disponible pour de meilleures performances |
| Java        | JDK 21              | La variable `JAVA_HOME` est préconfigurée                                                   |

### Outils de compilation

Des commandes préconfigurées permettent de compiler les programmes avec les options adaptées au concours, sans avoir à les mémoriser. Chacune prend le nom de base du fichier source en argument.

| **Commande**       | **Action**                                                                     |
| ------------------ | ------------------------------------------------------------------------------ |
| `mygcc sol`        | `gcc -std=gnu17 -Wall -O2 -static` → compile `sol.c` en `sol`                  |
| `mygpp sol`        | `g++ -std=gnu++20 -Wall -O2 -static` → compile `sol.cpp` en `sol`              |
| `mypython sol.py`  | Exécute le programme avec l’interpréteur PyPy 3                                |
| `myjavac Sol.java` | Exécute `javac` (JDK 21, UTF-8)                                                |
| `mykotlinc Sol.kt` | Exécute `kotlinc` (JDK 21) → génère les classes JVM dans le répertoire courant |

```bash
$ mygpp solution       # compile solution.cpp → ./solution
$ ./solution < in      # exécute le programme
```

### Éditeurs et environnements de développement (IDE)

Choisissez l’outil avec lequel vous êtes le plus rapide : ils sont tous installés.

- **VS Code** — avec les extensions C/C++ (ainsi que CMake Tools), Python et Java ; les tâches de compilation et de débogage sont préconfigurées pour C/C++ (`g++ -std=c++23` / `gcc -std=c17`, `gdb`). Les fonctionnalités d’IA et Copilot, la page d’accueil et les notifications de mise à jour sont désactivées. L’extension Vim est installée, mais désactivée par défaut : exécutez **Vim: Toggle Vim Mode** depuis la palette de commandes (Ctrl+Shift+P) pour l’activer.
- **Neovim** — avec serveurs de langage, coloration syntaxique Treesitter et explorateur de fichiers (voir ci-dessous).
- **Vim, Emacs, nano, gedit, Geany**
- **JetBrains** — PyCharm (Python), IntelliJ IDEA (Java et Kotlin), CLion (C/C++).
- **Eclipse** et **NetBeans** (Java).
- **Code::Blocks** (C/C++).

### Extensions des éditeurs

Seules les extensions répertoriées ci-dessous sont installées. Il ne sera pas possible d’installer ou de mettre à jour des extensions pendant le concours.

#### Extensions VS Code

| Extension                 | Identifiant                 | Utilisation                                                      |
| ------------------------- | --------------------------- | ---------------------------------------------------------------- |
| C/C++                     | `ms-vscode.cpptools`        | C et C++ : IntelliSense et débogage avec GDB                     |
| CMake Tools               | `ms-vscode.cmake-tools`     | C et C++ : gestion des projets CMake                             |
| Python                    | `ms-python.python`          | Python : prise en charge du langage                              |
| Pylance                   | `ms-python.vscode-pylance`  | Python : serveur de langage et IntelliSense                      |
| Python Debugger           | `ms-python.debugpy`         | Python : débogage                                                |
| Language Support for Java | `redhat.java`               | Java : prise en charge du langage                                |
| Debugger for Java         | `vscjava.vscode-java-debug` | Java : débogage                                                  |
| Test Runner for Java      | `vscjava.vscode-java-test`  | Java : exécution et débogage des tests                           |
| Vim                       | `vscodevim.vim`             | Désactivée par défaut ; activez-la avec **Vim: Toggle Vim Mode** |

Il n’existe pas d’extension Kotlin pour VS Code. Utilisez IntelliJ IDEA ou Neovim pour programmer en Kotlin.

#### Extensions Neovim

| **Extension**          | **Fonctionnalité**                                                                                            |
| ---------------------- | ------------------------------------------------------------------------------------------------------------- |
| LSP (`nvim-lspconfig`) | Serveurs de langage : `clangd` (C/C++), `pyright` (Python), `jdtls` (Java), `kotlin-language-server` (Kotlin) |
| `nvim-treesitter`      | Coloration syntaxique et indentation pour C, C++, Python, Java et Kotlin                                      |
| `neo-tree`             | Explorateur de fichiers                                                                                       |
| `which-key`            | Affiche les raccourcis clavier disponibles au fur et à mesure de la saisie                                    |
| `nvim-web-devicons`    | Icônes associées aux types de fichiers                                                                        |

La touche Leader est **Espace**. Les raccourcis suivants sont préconfigurés :

| **Touches**                 | **Fonctionnalité**                            |
| --------------------------- | --------------------------------------------- |
| `Espace` puis `e`           | Afficher ou masquer l’explorateur de fichiers |
| `g` puis `d`                | Aller à la définition                         |
| `g` puis `r`                | Afficher les références                       |
| `K`                         | Afficher la documentation au survol           |
| `Espace` puis `r` puis `n`  | Renommer un symbole                           |
| `Espace` puis `c` puis `a`  | Action sur le code                            |
| `[` puis `d` / `]` puis `d` | Diagnostic précédent / suivant                |

#### IDE JetBrains

PyCharm, IntelliJ IDEA et CLion sont fournis uniquement avec leurs extensions standard intégrées. IntelliJ IDEA est préconfiguré avec le JDK 21 comme SDK du projet : les nouveaux projets Java et Kotlin peuvent donc être compilés immédiatement.

### Outils en ligne de commande

Outils de débogage, de profilage et utilitaires courants du shell :

`gdb` · `valgrind` · `strace` · `cmake` · `git` · `tmux` · `screen` · `shellcheck` · `btop` · `htop` · `iotop` · `wget` · `curl` · `zip` / `unzip` / `7z`

### Soumission des solutions

L’outil de soumission en ligne de commande de DOMjudge est installé et déjà configuré pour communiquer avec le système de jugement du concours. Aucune URL n’est à configurer.

```bash
$ submit solution.cpp        # soumet une solution pour le problème courant
$ submit -p A solution.cpp   # soumet explicitement une solution pour le problème A
```

Vous pouvez également soumettre vos solutions depuis l’interface Web de DOMjudge dans Firefox : elle est définie comme page d’accueil du navigateur et figure dans le premier favori de la barre d’outils.

### Impression

L’imprimante du concours, PSGEWIS1, est configurée comme imprimante par défaut. Imprimez depuis n’importe quelle application avec **Ctrl+P**, ou depuis le terminal :

```bash
$ lp solution.cpp
```

### Extras

|                    |                                                                                                                                                                                               |
| ------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| DevDocs hors ligne | Copie complète de [DevDocs](https://devdocs.io/) disponible sur `https://docs.gehack.nl` (également accessible depuis la barre des favoris de Firefox) — aucune connexion Internet nécessaire |
| Jeux               | Jeux GNOME (Sudoku, Mines, Mahjong, etc.), SuperTux, SuperTuxKart, Neverball, ainsi que des jeux classiques en terminal                                                                       |

### Informations importantes

- **Aucune connexion Internet pendant le concours.** La machine peut accéder au système de jugement, au miroir DevDocs et à l’imprimante ; les autres machines du réseau du concours sont bloquées.
- **Firefox est verrouillé :** les extensions ne peuvent pas être installées et la page d’accueil est imposée par le système de jugement.
- **Les périphériques USB branchés après le démarrage de la machine sont bloqués.** Adressez-vous à un bénévole de GEHACK si vous devez connecter un périphérique.
- **Le Wi-Fi et le Bluetooth sont désactivés.**
- **L’écran et la webcam sont diffusés** à destination de l’organisation du concours.
- **Les commandes Nix sont désactivées** pour le compte utilisé pendant le concours ; tout le nécessaire est déjà installé.
