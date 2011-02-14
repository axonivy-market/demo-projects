<!--ivy.input_validate name_de="Zeit  [Std:Min]" name_en="Time  [hh:mm]"-->
function aTime(field,msg,loc)
{ 

  /* default messages */
  msg_en=field.name+" is not a valid Time";
  msg_de=field.name+" ist keine gütlige Zeit";

  // hh:mm
  regexp=/\d{1,2}:\d{1,2}/;
  
  del1=field.value.indexOf(":");

  if(field.value.length<=5
	&& field.value.search(regexp)==0 
	&& parseInt(field.value.substring(0,del1))<=23
	&& parseInt(field.value.substring(del1+1,field.value.length))<=60)
  {       
    return true;
  }
  else
  {
    if(msg!=null && msg.length>0)
	alert(msg);
    else if(loc=="de")
	alert(msg_de);
    else 
	alert(msg_en);							 
    return false;
  } 
}