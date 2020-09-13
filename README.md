![Header](.github/preview.png)

# script-playground

## c

### Usage (c)

Each folder contains a source file, and must be built using a C compiler to be executed.

- center-text
  - Small script to center text in the terminal. Uses stuff to get information about the terminal it's in, adds spaces as needed.

## Java

### Usage (Java)

Simply run `java [file]` after installing your JVM/JVE/stuff. APT packages are `default-jvm` and `default-jve`.

- hello-world.Java
  - A simple Hello World script as a test

## lua-love2d

### lua Libraries

- bump
  - Super lightweight physics and collision. MIT License.
  - <https://github.com/kikito/bump.lua>
- tick
  - Delay and tick handling. MIT License.
  - <https://github.com/rxi/tick>
- classic
  - Lightweight class module for OOPness. MIT License.
  - <https://github.com/rxi/classic/>
- binser
  - Nice and easy serialiser for serialising and deserialising. MIT License.
  - <https://github.com/bakpakin/binser>

### Usage (lua-love2d)

Each folder is a valid LÖVE directory. Install LÖVE from <https://love2d.org/> and then run `love [directory]` to test each one.

- atlas-test
  - Testing for a neat atlas json handling system
- dialogue
  - work-in-progress dialogue system using some libraries
- menu-select-test
  - proof of concept for atlas loading, menu selection, screen size stuff. Messy code, but looks nice
- particle-test
  - Simple, if trash, test implementation of particles for familiarisation purposes.

![preview](/lua-love2d/atlas-test/img/atlas.png)

![an image showing a video-game world selection menu](/lua-love2d/menu-select-test/img/preview.png)
