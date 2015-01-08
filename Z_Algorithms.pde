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


float patternMatchScore(ArrayList<Neuron> n_inputs, Neuron output)
{
  float active_matches = 0;
  float active_mismatches = 0;
  float inactive_mismatches = 0;
  
  float amiss_mod = 0.3;
  float imiss_mod = 0.3;
 
  float match_score = 0;
 
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
 
 
  
  //println("\nActive Matches: ",active_matches);
  //println("Inactive Mis-Matches: ",inactive_mismatches);
  //println("Active Mis-Matches: ",active_mismatches);
  
  match_score = active_matches - (inactive_mismatches*imiss_mod) - (active_mismatches*amiss_mod);
  return(match_score);
  
}
