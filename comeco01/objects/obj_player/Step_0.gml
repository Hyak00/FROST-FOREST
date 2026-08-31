// Movimento simples com setas / WASD
var _vel = 4;

if (keyboard_check(vk_left) || keyboard_check(ord("A"))) x -= _vel;
if (keyboard_check(vk_right) || keyboard_check(ord("D"))) x += _vel;
if (keyboard_check(vk_up) || keyboard_check(ord("W"))) y -= _vel;
if (keyboard_check(vk_down) || keyboard_check(ord("S"))) y += _vel;