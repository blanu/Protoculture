var selectedPort=argument0;
show_debug_message("Sending "+string(selectedPort));

var buffer=buffer_create(3, buffer_fixed, 1);
buffer_seek(buffer, buffer_seek_start, 0);
buffer_write(buffer, buffer_u16, selectedPort);
buffer_write(buffer, buffer_string, "\n");
var result=network_send_raw(network_obj.connection, buffer, buffer_tell(buffer));

show_debug_message("Sent "+string(network_obj.connection)+" "+string(buffer));
show_debug_message("Result "+string(result));
