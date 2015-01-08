class NeuralBlock
{
  ArrayList<Neuron> inputs;
  ArrayList<Neuron> outputs;
  
  ArrayList<Connection> connections;


  NeuralBlock()
  {
    this.inputs = new ArrayList<Neuron>();
    this.outputs = new ArrayList<Neuron>();
    this.connections = new ArrayList<Connection>();
  }
  
  void addInput(Neuron n)
  {
    inputs.add(n);
  }
  void addOutput(Neuron n)
  {
    outputs.add(n);
  }
  
  ArrayList<Neuron> getInputs()
  {
    return(inputs);
  }
  
  Neuron getInput(int input_num)
  {
    return(inputs.get(input_num));
  }
  
  ArrayList<Neuron> getOutputs()
  {
    
    return(outputs);
  }
  
  Neuron getOutput(int output_num)
  {
    return(outputs.get(output_num));
  }

  void addConnection(Neuron in,Neuron out)
  {
    if(in.getOutputs().contains(out))
    {
      println("connection already established");
    }
    else
    {
      connections.add(new Connection(in,out));
      in.getOutputs().add(out);
      out.getInputs().add(in);
    }
  }
  
  void printConnections()
  {
    
    for(Connection c1:connections)
    {
      println(c1.printConnection());
    }
    
  }
  
  void displayInputs()
  {
    for(Neuron n: inputs)
    {
      
      n.display();
    }
  }


  void displayPattern(Neuron output_neuron)
  {
     boolean prev_state;
     
     for(Neuron n : output_neuron.getInputs())
     {
       prev_state = n.isActive();
       n.setActive(true);
       n.display();
       n.setActive(prev_state);
     }
  }
  
  void printPatternMatch()
  {
    for(Neuron n:outputs)
    {
      println("Output: ",n.getNeuronName(),"Score:",patternMatchScore(inputs,n));
    }
  }
      
}
