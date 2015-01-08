NeuralBlock nb;
Data[] myData;

void setup()
{
  size(800,600);
  background(0);
  
  nb = new NeuralBlock();
  
  neuronBlockAddInputGrid(nb);
  setConnections(nb);
  
  
  nb.displayInputs();
  
  //nb.displayPattern(nb.getOutput(0));
  //nb.displayPattern(nb.getOutput(2));
  nb.printPatternMatch();
  
 
  //nb.printConnections();
  


}


void draw()
{
  
}

void testCase1()
{
  
  int data_size = 300;
  
  myData = new Data[data_size];
  
  for(int i=0;i<data_size;i++)
  {
    myData[i] = new Data(); 
  }
  
}

void neuronTestCase()
{
  Neuron n = new Neuron("Test Neuron");
  float n_size = 30;
  
  n.setPos(300,300);
  n.setSize(n_size);
  n.active = true;
  
  
  n.display();
}

void neuronBlockAddInputGrid(NeuralBlock neuralblock)
{
  float nsize = 30;
  
  Neuron o1 = new Neuron("O1");
  Neuron o2 = new Neuron("O2");
  Neuron o3 = new Neuron("O3");

  
  Neuron n1 = new Neuron("N1").setPos(100,100).setSize(nsize).setActive(true);
  Neuron n2 = new Neuron("N2").setPos(200,100).setSize(nsize).setActive(false);
  Neuron n3 = new Neuron("N3").setPos(300,100).setSize(nsize).setActive(false);
  
  Neuron n4 = new Neuron("N4").setPos(100,200).setSize(nsize).setActive(true);
  Neuron n5 = new Neuron("N5").setPos(200,200).setSize(nsize).setActive(true);
  Neuron n6 = new Neuron("N6").setPos(300,200).setSize(nsize).setActive(true);
  
  Neuron n7 = new Neuron("N7").setPos(100,300).setSize(nsize).setActive(true);
  Neuron n8 = new Neuron("N8").setPos(200,300).setSize(nsize).setActive(true);
  Neuron n9 = new Neuron("N9").setPos(300,300).setSize(nsize).setActive(true);
  
  neuralblock.addInput(n1);
  neuralblock.addInput(n2);
  neuralblock.addInput(n3);
  
  neuralblock.addInput(n4);
  neuralblock.addInput(n5);
  neuralblock.addInput(n6);
  
  neuralblock.addInput(n7);
  neuralblock.addInput(n8);
  neuralblock.addInput(n9);
  
  neuralblock.addOutput(o1);
  neuralblock.addOutput(o2);
  neuralblock.addOutput(o3);
  
}

void setConnections(NeuralBlock nblk)
{
  nblk.addConnection(nblk.getInput(0),nblk.getOutput(0));
  nblk.addConnection(nblk.getInput(1),nblk.getOutput(0));
  nblk.addConnection(nblk.getInput(2),nblk.getOutput(0));
  
  nblk.addConnection(nblk.getInput(3),nblk.getOutput(1));
  nblk.addConnection(nblk.getInput(4),nblk.getOutput(1));
  nblk.addConnection(nblk.getInput(5),nblk.getOutput(1));
  
  nblk.addConnection(nblk.getInput(6),nblk.getOutput(2));
  nblk.addConnection(nblk.getInput(7),nblk.getOutput(2));
  nblk.addConnection(nblk.getInput(8),nblk.getOutput(2));
  
  
}







