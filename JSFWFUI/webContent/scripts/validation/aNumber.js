/* ivy.input_validate name_de="Zahl [Number]" name_en="a Number"*/
function aNumber(field,msg,loc)
{ 

  /* default messages */
  msg_en=field.name+" must be a Number";
  msg_de=field.name+" muss eine Zahl sein";

  if(field.value.length==0 || isNaN(new Number(field.value)))
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