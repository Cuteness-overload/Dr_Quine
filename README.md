# Dr. Quine Project

This repository contains my work for the Dr. Quine project—a deep dive into self-reproducing programs that explore the recursion theorem of Kleene. The project originally required implementations in C/ASM for three quine variants (Colleen, Grace, and Sully), and for the bonus part, I reimplemented the challenge entirely in Rust.

## Overview

Dr. Quine challenges you to write programs that output their own source code, but with a twist: you must adhere to specific constraints for each program. The three mandatory programs include:

- **Colleen:** A quine that prints its own source code on execution.
- **Grace:** A program that writes its source code into a secondary file using advanced macros and no `main` function.
- **Sully:** A self-replicating program that creates successive source files with a decrementing counter until a stop condition is met.

For the bonus, I chose to reimplement the project in Rust—demonstrating that even in languages without traditional macros or C-like preprocessor directives, creative approaches can still lead to a valid quine.

## Repository Structure

The repository is organized as follows:

```
├── README.md
├── C/
│   ├── Colleen/
│   │   ├── Colleen.c
│   │   └── Makefile
│   ├── Grace/
│   │   ├── Grace.c
│   │   └── Makefile
│   └── Sully/
│       ├── Sully.c
│       └── Makefile
├── ASM
│   ├── Colleen/
│   │   ├── Colleen.s
│   │   └── Makefile
│   ├── Grace/
│   │   ├── Grace.s
│   │   └── Makefile
│   └── Sully/
│       ├── Sully.s
│       └── Makefile
...
```

## Project Background

The Dr. Quine project is designed to introduce the concept of self-reproduction in programming and the fascinating implications of the recursion theorem. It challenges you to think about the nature of code and how a program can encapsulate its own logic. This repository documents my journey through these challenges and the innovative approach taken in the Rust bonus implementation.
