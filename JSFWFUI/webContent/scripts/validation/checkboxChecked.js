/*ivy.checkbox_validate name_de="Checkbox selektiert" name_en="checkbox checked"*/
function checkboxChecked(field,msg,loc)
{
  /* default messages */
  msg_en=field[0].name+" must be selected";
  msg_de=field[0].name+" muss selektiert sein";

  selected=false;
  for(i=0;i<field.length;i++)
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

