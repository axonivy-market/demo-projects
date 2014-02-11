//ivy.radio_validate name_de="Radioknopf selektiert" name_en="radio option selected"
function radioChecked(field,msg,loc)
{
  /* default messages */
  msg_en=field[0].name+" must be selected";
  msg_de=field[0].name+" muss ausgewählt werden";
  
  selected=false;
  for(var i=0;i<field.length;i++)
  {
    selected=selected || field[i].checked;
  }			
  if(!selected)
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

