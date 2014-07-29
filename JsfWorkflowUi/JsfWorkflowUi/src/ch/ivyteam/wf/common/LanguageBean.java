package ch.ivyteam.wf.common;  
  
import java.io.Serializable;

import javax.faces.bean.ManagedBean;

import ch.ivyteam.ivy.environment.Ivy;
  
@SuppressWarnings("serial")
@ManagedBean
public class LanguageBean implements Serializable {
    
	public void languageEnglish() {
		Ivy.wf().getSecurityContext().getCurrentSession().setContentLocale(java.util.Locale.ENGLISH);
		Ivy.wf().getSecurityContext().getCurrentSession().setFormattingLocale(java.util.Locale.ENGLISH);
	}
	
	public void languageGerman() {
		Ivy.wf().getSecurityContext().getCurrentSession().setContentLocale(java.util.Locale.GERMAN);
		Ivy.wf().getSecurityContext().getCurrentSession().setFormattingLocale(java.util.Locale.GERMAN);
	}
	
	public void languageFrench() {
		Ivy.wf().getSecurityContext().getCurrentSession().setContentLocale(java.util.Locale.FRANCE);
		Ivy.wf().getSecurityContext().getCurrentSession().setFormattingLocale(java.util.Locale.FRANCE);
	}
}