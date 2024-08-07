package ch.ivyteam.htmldialog.demo.output;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

import org.primefaces.model.DialogFrameworkOptions;

import ch.ivyteam.ivy.jsf.primefaces.dialog.IvyDynamicDialog;

@ManagedBean
@ViewScoped
public class DynamicDialogBean {
  
  public void view() {
    DialogFrameworkOptions options = DialogFrameworkOptions
        .builder()
        .resizable(false)
        .draggable(false)
        .build();
    Map<String, List<String>> parameters = new HashMap<String, List<String>>();
    List<String> keys = new ArrayList<String>();
    keys.add("Harry Potter");
    keys.add("Lords of the Rings");
    parameters.put("Films", keys);
    IvyDynamicDialog ivyDynamicDialog = new IvyDynamicDialog();
    ivyDynamicDialog.open("ConfiguratedDlg", options, parameters);
  }
}
