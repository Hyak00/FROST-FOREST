pausado = !pausado;

if (pausado) {
    instance_deactivate_all(true); 
} else {
    instance_activate_all();
}	