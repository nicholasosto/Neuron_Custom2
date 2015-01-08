class Neuron
{
  ArrayList<Neuron> inputs;
  ArrayList<Neuron> outputs;
  
  boolean active;
  
  String name;
  
  Neuron(String name)
  {
    this.inputs = new ArrayList<Neuron>();
    this.outputs = new ArrayList<Neuron>();
    
    this.active = false;
    
    this.name = name;
  }
  
  ArrayList<Neuron> getInputs()
  {
    return(inputs);
  }
  
  ArrayList<Neuron> getOutputs()
  {
    return(outputs);
  }
  
  boolean isActive()
  {
    return(active);
  }
  
  
  String getNeuronName()
  {
    return(name);
  }

}
