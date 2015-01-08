float threshold = 0.4;
int data_size = 300;

NeuralBlock nb;
Data[] myData;



void setup()
{
  size(800,600);
 
  nb = new NeuralBlock();
  
  nb.addConnection(nb.getInput(0),nb.getOutput(1));
  nb.addConnection(nb.getInput(0),nb.getOutput(1));
  nb.addConnection(nb.getInput(1),nb.getOutput(2));
  nb.addConnection(nb.getInput(1),nb.getOutput(1));
  nb.addConnection(nb.getInput(1),nb.getOutput(1));
  
  nb.printConnections();
  
  myData = new Data[data_size];

  for(int i=0;i<data_size;i++)
  {
    myData[i] = new Data(); 
  }
}


void draw()
{
  background(0);
  
  if(second()%6==0)
  {
    
  }
  if(second()%6==1)
  {
    
  }
  if(second()%6==2)
  {
    
  }
  if(second()%6==3)
  {
    
  }
  if(second()%6==4)
  {
    
  }
  if(second()%6==5)
  {
    
  }

  
}

boolean sigmoid(float threshold,float z)
{
  float sig_val = 1/(1+exp(-1*z));
  boolean ret_val = false;
  
  if(sig_val >= threshold)
  {
    ret_val = true;
  }
  
  return(ret_val);
}

void keyPressed()
{
  println(key);
  
  switch(key)
  {
    case 1:
      break;
    case 2:
     
      break;
    case 3:
     
      break;
    case 4:
      
      break;
    case 5:
     
      break;
    case 6:
      
      break;
    case 7:
      
      break;
    case 8:
     
      break;
    case 9:
      
      break;
      
    default:
  }
}


int patternMatchScore(ArrayList<Neuron> n_inputs, Neuron output)
{
  int active_matches = 0;
  int active_mismatches = 0;
  int inactive_mismatches = 0;
 
  int match_score = 0;
 
  for(Neuron in : n_inputs)
  {
    if(in.isActive())
    {
      if((output.inputs.contains(in)))
      {
        active_matches++;
      }
      else
      {
        active_mismatches++;
      }
    }
    else if(!in.isActive()&&output.inputs.contains(in))
    {
      inactive_mismatches++;
    }
  }
 
 
  match_score = active_matches - inactive_mismatches - active_mismatches;
  println("Active Matches: ",active_matches);
  println("Inactive Mis-Matches: ",inactive_mismatches);
  println("Active Mis-Matches: ",active_mismatches);
  return(match_score);
}
