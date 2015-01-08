class Connection
{
  Neuron n1;
  Neuron n2;
  
  float strength;
  float enhancer;
  float degrader;
  
  Connection(Neuron n1, Neuron n2)
  {
    this.n1 = n1;
    this.n2 = n2;
    
    this.strength = 0;
    this.enhancer = 0.2;
    this.degrader = 0.013;
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
    String tmp = n1.getNeuronName()+" -> "+n2.getNeuronName()+" ("+strength+")";
    return(tmp);
  }
  
  
}
