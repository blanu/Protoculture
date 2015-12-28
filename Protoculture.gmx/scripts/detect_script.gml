var port=argument0;

show_debug_message("Port: ");
show_debug_message(port);

var newPort=instance_create(0, 0, port_obj);
newPort.port=port;
