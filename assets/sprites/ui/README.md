# UI Icons

This directory contains UI icons for the game interface.

## Resource Icons

The following resource icons are needed for the resource display panel:

- `wood_icon.png` - Wood resource icon (16x16 pixels recommended)
- `clay_icon.png` - Clay resource icon (16x16 pixels recommended)  
- `iron_icon.png` - Iron resource icon (16x16 pixels recommended)
- `population_icon.png` - Population resource icon (16x16 pixels recommended)

## Implementation

When icons are ready:

1. Add the icon files to this directory
2. In `src/Main.gd`, in the `_format_resource_text()` function:
   - Uncomment the `icon_tag` line
   - Comment out the `icon_placeholder` return
   - Change the return statement to use `icon_tag` instead of `icon_placeholder`

## Current Format

Currently uses text placeholders: `[wood_icon] Wood: 5`
Future format with icons: `[img=16x16]res://assets/sprites/ui/wood_icon.png[/img] Wood: 5`

## BBCode Support

The resource labels are now RichTextLabel nodes with BBCode enabled, supporting:

- Images: `[img]path[/img]` or `[img=widthxheight]path[/img]`
- Colors: `[color=red]text[/color]`
- Bold/Italic: `[b]text[/b]`, `[i]text[/i]`
- And more BBCode formatting options