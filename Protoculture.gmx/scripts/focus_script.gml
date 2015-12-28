var port=self.port;

with(port_obj)
{
  if(self.port!=port)
  {
    instance_destroy();
  } else {
    self.persistent=true;
  }
}
