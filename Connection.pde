class Connection
{
  Neuron in;
  Neuron out;
  
  float strength;
  float enhancer;
  float degrader;
  
  Connection(Neuron in, Neuron out)
  {
    this.in = in;
    this.out = out;
    
    this.strength = 0;
    this.enhancer = 0.2;
    this.degrader = 0.013;
  }
  
  Neuron getIn()
  {
    return(in);
  }
  Neuron getOut()
  {
    return(out);
  }
  
  void degrade()
  {
    if(this.strength > 0)
    {
      this.strength -= degrader;
    }
    else
    {
      this.strength = 0;
    }
  }
  
  void enhance()
  {
    if(this.strength < 1)
    {
      this.strength += enhancer;
    }
    else
    {
      this.strength = 1;
    }
  }
  
  String printConnection()
  {
    String tmp = in.getNeuronName()+" -> "+out.getNeuronName()+" ("+strength+")";
    return(tmp);
  }
  
  
}
