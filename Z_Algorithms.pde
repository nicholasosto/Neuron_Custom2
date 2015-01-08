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
