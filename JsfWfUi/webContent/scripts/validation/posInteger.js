/* ivy.input_validate name_de="ganze Zahl>0" name_en="Integer>0" */
function posInteger(field,msg,loc)
{ 
  /* default messages */
  msg_en=field.name+" must be an Integer>0";
  msg_de=field.name+" muss eine ganze Zahl>0 sein";  


  failed=false;
  val=new String(field.value);
  if(field.value==null || field.value.length==0)
  {
	failed=true;
  }
  else 
  {
    for(var i=0; i<val.length; i++)
	{
    	n=parseInt(val.substring(i,i+1),10);  
    	if(isNaN(n))
  		{		
			failed=true;
  		}
	}
  }
  n=parseInt(val,10);
  if(isNaN(n) || n<=0)
  {
  	failed=true;
  }
  if(failed)
  {
    if(msg!=null && msg.length>0)
	alert(msg);
    else if(loc=="de")
	alert(msg_de);
    else 
	alert(msg_en);							 
    return false;

  } 
  else
  {       
    return true;
  }
}