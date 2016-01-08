show_debug_message('Connecting...');
var client = network_create_socket(network_socket_tcp);
network_obj.connection=client;
network_connect_raw(client, "127.0.0.1", 10001);
