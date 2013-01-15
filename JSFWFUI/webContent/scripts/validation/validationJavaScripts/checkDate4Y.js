/* ivy.input_validate name_de="Datum [TT.MM.JJJJ]" name_en="Date [DD.MM.YYYY]" */
function checkDate4Y(field,msg,loc)
{ 

  /* default messages */
  msg_en=field.name+" is not a valid Date [DD.MM.YYYY]";
  msg_de=field.name+" ist kein gütliges Datum [TT.MM.JJJJ]";
  msg_fr=field.name+" n'est pas une date valide [JJ.MM.AAAA]";

  // d.m.yyyy or dd.mm.yyyy
  regexp=/\d{1,2}\.\d{1,2}\.\d{4,4}/;

  // d/m/yyyy or dd/mm/yyyy
  regexp2=/\d{1,2}\/\d{1,2}\/\d{4,4}/;
  
  // seperator: '.' 
  del1=field.value.indexOf(".");
  del2=field.value.lastIndexOf(".");

  // seperator: '/' 
  altDel1=field.value.indexOf("/");
  altDel2=field.value.lastIndexOf("/");

  // seperator: '.' 
  if(field.value.length>=8 && field.value.length<=10
	&& field.value.search(regexp)==0 
	&& parseInt(field.value.substring(0,del1))<=31
	&& parseInt(field.value.substring(del1+1,del2))<=12)
  { 
    return true;
  }
  // seperator: '/' 
  else if(field.value.length>=8 && field.value.length<=10
	&& field.value.search(regexp2)==0 
	&& parseInt(field.value.substring(0,altDel1))<=31
	&& parseInt(field.value.substring(altDel1	+1,altDel2))<=12)
  {      
    return true;
  }  
  else
  {
    if(msg!=null && msg.length>0)
		alert(msg);
    else if(loc=="de")
		alert(msg_de);
    else if(loc=="fr")
		alert(msg_fr);	
    else 
		alert(msg_en);							 
    return false;
  } 
}