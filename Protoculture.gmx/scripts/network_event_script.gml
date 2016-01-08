show_debug_message("Networking event...");
var type=ds_map_find_value(async_load, "type");
var connid=ds_map_find_value(async_load, "id");
var ip=ds_map_find_value(async_load, "ip");
var port=ds_map_find_value(async_load, "port");

if(type==network_type_connect)
{
  show_debug_message("Connected.");  
} else if(type==network_type_disconnect) {
  show_debug_message("Disconnected.");
} else if(type==network_type_data) {
  show_debug_message("Network data");
  var buffer=ds_map_find_value(async_load, "buffer");
  var size=ds_map_find_value(async_load, "size");
  if(mode==0) { // Detecting
    var detectedPort=buffer_read(buffer, buffer_u16);
    show_debug_message("Detected port "+string(detectedPort));
    detect_script(detectedPort);
  } else if(mode==2) { // Capturing
    var capturedCount=buffer_read(buffer, buffer_u16);
    show_debug_message("Captured count "+string(capturedCount));
    observe_obj.count=capturedCount;
  }
}
