NeuralBlock nb;
Data[] myData;

void setup()
{
  size(800,600);
  
  nb = new NeuralBlock();
  
  testCase1();
  
  
  
}


void draw()
{
  background(0);
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







