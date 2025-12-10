# Keymaps

Custom keyboard firmware keymaps for QMK-compatible keyboards.

## Keymap Structure

This repository contains a custom keymap configuration for mechanical keyboards running QMK firmware.

### Layers

The keymap includes four layers:

1. **Base Layer (_BASE)**: Standard QWERTY layout with modifier keys
2. **Function Layer (_FN)**: Function keys (F1-F12), media controls, and navigation
3. **Lower Layer (_LOWER)**: Symbol and special character access
4. **Raise Layer (_RAISE)**: Numbers, symbols, and firmware reset

### Features

- **Ortho 4x12 Layout**: Optimized for 40% ortholinear keyboards
- **Layer Switching**: Easy access to multiple layers via momentary keys
- **Custom Keycodes**: Includes example macros (QMKBEST, QMKURL)
- **Media Controls**: Volume, mute, and play/pause on FN layer
- **Navigation**: Arrow keys, Home, End, Page Up/Down
- **Firmware Reset**: QK_BOOT on Raise layer for flashing new firmware

### Files

- `keymap/keymap.c`: Main keymap definition with layer layouts
- `keymap/config.h`: Keymap-specific configuration options
- `keymap/rules.mk`: Build options and feature flags

### Usage

To use this keymap with your QMK keyboard:

1. Copy the `keymap` folder to your keyboard's keymap directory
2. Adjust the layout macro (currently `LAYOUT_ortho_4x12`) to match your keyboard
3. Modify layers as needed for your preferences
4. Build and flash using QMK commands

### Customization

Feel free to modify:
- Key positions in each layer
- Number of layers
- Tapping term and other timing settings in config.h
- Enabled features in rules.mk

### License

This keymap is licensed under GPL v2.0 or later.