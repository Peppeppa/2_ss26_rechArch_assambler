#!/bin/bash

set -e

SRC="hello.asm"
OBJ="hello.o"
BIN="hello"

# Prüfen, ob die ASM-Datei existiert
if [ ! -f "$SRC" ]; then
  echo "Fehler: $SRC wurde nicht gefunden."
  exit 1
fi

# Alte Build-Dateien löschen, falls vorhanden
if [ -f "$OBJ" ]; then
  rm "$OBJ"
fi

if [ -f "$BIN" ]; then
  rm "$BIN"
fi

# Neu kompilieren
nasm -f elf -g "$SRC" -o "$OBJ"
gcc -m32 -no-pie -z noexecstack "$OBJ" -o "$BIN"

# Programm ausführen
./"$BIN"
