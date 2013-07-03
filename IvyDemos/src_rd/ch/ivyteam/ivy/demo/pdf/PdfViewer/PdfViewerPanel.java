package ch.ivyteam.ivy.demo.pdf.PdfViewer;

import java.io.File;
import java.net.MalformedURLException;
import java.net.URL;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextField;
import ch.ivyteam.ulc.vwidget.server.ULCVPdfViewer;

import com.ulcjava.base.application.ClientContext;
import com.ulcjava.base.application.event.ActionEvent;
import com.ulcjava.base.application.event.IActionListener;
import com.ulcjava.base.application.util.IFileChooseHandler;
import com.ulcjava.base.shared.FileChooserConfig;
import com.ulcjava.base.shared.FileChooserConfig.FileFilterConfig;

import ch.ivyteam.ivy.richdialog.widgets.containers.RGridLayoutPane;
import com.ulcjava.base.application.util.Color;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.demo.util.Title.TitlePanel;
import ch.ivyteam.ivy.richdialog.exec.panel.EmbeddedRichDialog;
import ch.ivyteam.ivy.richdialog.exec.panel.RichDialogPanelFactory;
import com.ulcjava.base.application.ULCContainer;

/**
 * <p>
 * Demo for the PDF viewer widget.
 * </p>
 */
@SuppressWarnings("all")
public class PdfViewerPanel extends RichDialogGridBagPanel implements IRichDialogPanel {
	/** Serial version id */
	private static final long serialVersionUID = 1L;
	private RLabel lblPath = null;
	private RTextField tfdPath = null;
	private RButton btnFileBrowser = null;
	private RButton btnLoad = null;
	private ULCVPdfViewer viewer = null;
	private RCheckBox ckbToolBar = null;
	private RCheckBox ckbStatusBar = null;
	private RGridBagLayoutPane loadDocumentPane = null;
	private RLabel visibleLabel = null;
	private @EmbeddedRichDialog(TitlePanel.class) ULCContainer titlePanel = null;

	/**
	 * Create a new instance of VPdfViewerDemoPanel
	 */
	public PdfViewerPanel() {
		super();
		initialize();
	}

	/**
	 * This method initializes VPdfViewerDemoPanel
	 * 
	 * @return void
	 */
	private void initialize() {
		this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(848,546));
		this.add(getLoadDocumentPane(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 3, 1, 1.0, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.HORIZONTAL, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		this.add(getVisibleLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(5,5,5,5), 0, 0));
		this.add(getCkbStatusbar(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		this.add(getCkbToolBar(), new com.ulcjava.base.application.GridBagConstraints(2, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.WEST, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		this.add(getViewer(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 3, 1, 1.0, 1.0, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.BOTH, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}

	/**
	 * This method initializes lblPath
	 * 
	 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel
	 */
	private RLabel getLblPath() {
		if (lblPath == null) {
			lblPath = new RLabel();
			lblPath.setText("PDF Document:");
			lblPath.setName("lblPath");
		}
		return lblPath;
	}

	/**
	 * This method initializes tfdPath
	 * 
	 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField
	 */
	private RTextField getTfdPath() {
		if (tfdPath == null) {
			tfdPath = new RTextField();
			tfdPath.setText("");
			tfdPath.setToolTipText("Use either a PDF from the internet or a local file");
			tfdPath.setName("tfdPath");
		}
		return tfdPath;
	}

	/**
	 * This method initializes btnBrowser
	 * 
	 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton
	 */
	private RButton getBtnBrowser() {
		if (btnFileBrowser == null) {
			btnFileBrowser = new RButton();
			btnFileBrowser.setText("File...");
			btnFileBrowser.setName("btnFileBrowser");
			btnFileBrowser.addActionListener(new IActionListener() {

				@Override
				public void actionPerformed(ActionEvent arg0) {
					FileChooserConfig config = new FileChooserConfig();
					config.setDialogTitle("Choose which file to open");
					config.setApproveButtonText("Load");
					config.setAcceptAllFileFilterUsed(false);
					config.addFileFilterConfig(new FileFilterConfig(new String[]{"pdf"}, "PDF document"));
					config.setDialogType(FileChooserConfig.OPEN_DIALOG);
					IFileChooseHandler loadHandler = new IFileChooseHandler() {
						public void onFailure(int reason, String description) {
						}

						@Override
						public void onSuccess(String[] filePaths, String[] fileNames) {
							try {
								URL location = new File(filePaths[0]).toURI().toURL();
								viewer.openDocument(location);
								tfdPath.setText(location.toString());
							} catch (MalformedURLException e) {
								// do nothing
							}
						}
					};
					ClientContext.chooseFile(loadHandler, config, tfdPath);
				}
			});
		}
		return btnFileBrowser;
	}

	/**
	 * This method initializes btnLoad
	 * 
	 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton
	 */
	private RButton getBtnLoad() {
		if (btnLoad == null) {
			btnLoad = new RButton();
			btnLoad.setText("Load");
			btnLoad.setName("btnLoad");
		}
		return btnLoad;
	}

	/**
	 * This method initializes viewer
	 * 
	 * @return ch.ivyteam.ulc.vwidget.server.ULCVPdfViewer
	 */
	private ULCVPdfViewer getViewer() {
		if (viewer == null) {
			viewer = new ULCVPdfViewer();
			viewer.setName("viewer");
			viewer.setToolBarVisible(true);
			viewer.setStatusBarVisible(true);
		}
		return viewer;
	}

	/**
	 * This method initializes ckbToolbar
	 * 
	 * @return ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox
	 */
	private RCheckBox getCkbToolBar() {
		if (ckbToolBar == null) {
			ckbToolBar = new RCheckBox();
			ckbToolBar.setText("Tool-Bar");
			ckbToolBar.setName("ckbToolBar");
			ckbToolBar.setSelected(true);
		}
		return ckbToolBar;
	}

	/**
	 * This method initializes ckbStatusbar
	 * 
	 * @return ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox
	 */
	private RCheckBox getCkbStatusbar() {
		if (ckbStatusBar == null) {
			ckbStatusBar = new RCheckBox();
			ckbStatusBar.setText("Status-Bar");
			ckbStatusBar.setName("ckbStatusBar");
			ckbStatusBar.setSelected(true);
		}
		return ckbStatusBar;
	}

	/**
	 * This method initializes loadDocumentPane	
	 * 	
	 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
	 */
	private RGridBagLayoutPane getLoadDocumentPane() {
		if (loadDocumentPane == null) {
			loadDocumentPane = new RGridBagLayoutPane();
			loadDocumentPane.setName("loadDocumentPane");
			loadDocumentPane.add(getLblPath(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(5,5,5,5), 0, 0));
			loadDocumentPane.add(getTfdPath(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, 1.0, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.HORIZONTAL, new com.ulcjava.base.application.util.Insets(5,5,5,0), 0, 0));
			loadDocumentPane.add(getBtnBrowser(), new com.ulcjava.base.application.GridBagConstraints(2, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(3,3,3,0), 0, 0));
			loadDocumentPane.add(getBtnLoad(), new com.ulcjava.base.application.GridBagConstraints(3, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(3,3,3,3), 0, 0));
			loadDocumentPane.add(getTitlePanel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 5, 1, 1.0, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.HORIZONTAL, new com.ulcjava.base.application.util.Insets(0,0,5,0), 0, 0));
		}
		return loadDocumentPane;
	}

	/**
	 * This method initializes visibleLabel	
	 * 	
	 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
	 */
	private RLabel getVisibleLabel() {
		if (visibleLabel == null) {
			visibleLabel = new RLabel();
			visibleLabel.setText("Visibility: ");
			visibleLabel.setName("visibleLabel");
		}
		return visibleLabel;
	}

	/**
	 * This method initializes titlePanel, an embedded RichDialog.
	 * The created object might have a different type than the declared
	 * class due to overriding.
	 * @returns com.ulcjava.base.application.ULCContainer 
	 */
	private ULCContainer getTitlePanel() {
		if (titlePanel == null) {
			titlePanel = RichDialogPanelFactory.create(TitlePanel.class);
			titlePanel.setName("titlePanel");
		}
		return titlePanel;
	}
} // @jve:decl-index=0:visual-constraint="10,10"