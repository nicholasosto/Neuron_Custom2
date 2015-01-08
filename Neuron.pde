class Neuron
{
  ArrayList<Neuron> inputs;
  ArrayList<Neuron> outputs;
  
  PVector pos;
  float neuron_size;
  
  boolean active;
  
  String name;
  
  Neuron(String name)
  {
    this.inputs = new ArrayList<Neuron>();
    this.outputs = new ArrayList<Neuron>();
    
    this.active = false;
    
    this.name = name;
    this.pos = new PVector(0,0);
    this.neuron_size  = 0;
  }
  
  Neuron setPos(float x, float y)
  {
    this.pos.x = x;
    this.pos.y = y;
    return(this);
  }
  
  Neuron setSize(float size)
  {
    this.neuron_size = size;
    return(this);
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
  
  Neuron setActive(boolean is_active)
  {
    this.active = is_active;
    return(this);
  }
  
  String getNeuronName()
  {
    return(name);
  }
  
  void display()
  {
    if(active)
    {
      fill(255,0,0);
    }
    else
    {
      fill(50,50,50);
    }
    ellipse(pos.x,pos.y,neuron_size,neuron_size);
  }
}
