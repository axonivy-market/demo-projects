/* ivy.input_validate name_de="nicht leer" name_en="not empty" */
function _Empty(field,msg,loc)
{
  /* default messages */
  msg_en=field.name+" can not be left empty";
  msg_de=field.name+" muss ausgefüllt werden";
  
  if(field.value==null || field.value.length==0)
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

