class NeuralBlock
{
  ArrayList<Neuron> inputs;
  ArrayList<Neuron> outputs;
  
  ArrayList<Connection> connections;
  
  int num_input;
  int num_output;
  
  int counter;
  int max_count;
  
  NeuralBlock()
  {
    this.inputs = new ArrayList<Neuron>();
    this.outputs = new ArrayList<Neuron>();
    this.connections = new ArrayList<Connection>();
    this.num_input = 9;
    this.num_output = 6;
    this.counter = 0;
    
    //  sensor neurons
    for(int i=0;i<num_input;i++)
    {
      inputs.add(new Neuron("Neuron I"+i));
    }
    
    //  patterns neurons
    for(int i=0;i<num_output;i++)
    {
      outputs.add(new Neuron("Neuron P"+i));
    }

    
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

  void addConnection(Neuron i_n,Neuron i_o)
  {
    boolean prev_con = false;
    
    for(Connection c: connections)
    {
      if(c.n1 == i_n && c.n2 == i_o)
      {
        prev_con = true;
        c.enhance();
      }
    }
    if(!prev_con)
    {
      connections.add(new Connection(i_n,i_o));
    }
       
  }
  
  void printConnections()
  {
    
    for(Connection c1:connections)
    {
      println(c1.printConnection());
    }
    
  }


  void displayPattern(Neuron output_neuron)
  {
   
  }
      
}
