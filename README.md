# Game Title

## Overview

Short description of the game and its genre.

## Project Structure

- **assets/** → Art, audio, fonts, shaders
- **src/** → Scripts and game logic
- **scenes/** → Main game scenes
- **config/** → Settings and translations
- **docs/** → Notes and changelog

## How to Run

1. Open `project.godot` in Godot.
2. Run `Main.tscn`.

## Conventions

| Type | Convention | Info |
| --- | --- | --- |
| File names | snake_case | yaml_parsed.gd |
| class_name | PascalCase | YAMLParser |
| Node names | PascalCase |  |
| Functions | snake_case |  |
| Variables | snake_case |  |
| Signals | snake_case | always in past tense "door_opened" |
| Constants | CONSTANT_CASE |  |
| enum names | PascalCase |  |
| enum members | CONSTANT_CASE |  |

## Code Order

```text
01. tool
02. class_name
03. extends
04. # docstring

05. signals
06. enums
07. constants
08. exported variables
09. public variables
10. private variables
11. onready variables

12. optional built-in virtual _init method
13. built-in virtual _ready method
14. remaining built-in virtual methods
15. public methods
16. private methods
```

## Credits

List any free/paid assets, tools, or contributors.
