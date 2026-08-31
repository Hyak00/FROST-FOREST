if (array_length(dialogo_ativo) == 0) exit;

var _no = dialogo_ativo[no_atual];


if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))) {
    escolha = max(0, escolha - 1);
}
if (keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))) {
    escolha = min(array_length(_no.opcoes) - 1, escolha + 1);
}


if (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space)) {
    var _proximo = _no.proximos[escolha];
    
    if (_proximo == -1) {
        instance_destroy(); 
    } else {
        no_atual = _proximo;
        escolha = 0; 
    }
}


if (keyboard_check_pressed(vk_escape)) {
    instance_destroy();
}