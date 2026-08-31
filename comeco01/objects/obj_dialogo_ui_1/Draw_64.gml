if (array_length(dialogo_ativo) == 0) exit;

var _no = dialogo_ativo[no_atual];


draw_set_color(c_black);
draw_set_alpha(0.8);
draw_rectangle(32, room_height - 180, room_width - 32, room_height - 32, false);
draw_set_alpha(1);


draw_set_color(c_white);
draw_rectangle(32, room_height - 180, room_width - 32, room_height - 32, true);


draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text_ext(48, room_height - 170, _no.texto, 20, room_width - 100);


for (var i = 0; i < array_length(_no.opcoes); i++) {
    if (i == escolha) {
        draw_set_color(c_yellow); 
        draw_text(48, room_height - 110 + (i * 22), "> " + _no.opcoes[i]);
    } else {
        draw_set_color(c_ltgray);
        draw_text(48, room_height - 110 + (i * 22), "  " + _no.opcoes[i]);
    }
}

draw_set_color(c_white);