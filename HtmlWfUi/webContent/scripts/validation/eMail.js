/* ivy.input_validate name_de="EMail Adresse" name_en="EMail address" */
function eMail(field,msg,loc)
{ 

  /* default messages */
  msg_en=field.name+" is not a valid EMail address";
  msg_de=field.name+" ist keine gültige EMail Adresse";


  del1=field.value.indexOf("@");
  del2=field.value.indexOf(".");

  if(field.value.length>0
	&& del1>0
	&& del2>0)
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