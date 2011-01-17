/**
 * 
 */
package ch.ivyteam.ivy.workflow.ui.utils;

import java.io.OutputStream;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.scripting.objects.Binary;

import com.ulcjava.base.application.ClientContext;
import com.ulcjava.base.application.ULCAlert;
import com.ulcjava.base.application.util.serializable.IFileStoreHandler;
import com.ulcjava.base.shared.FileChooserConfig;

/**
 * @author tisea
 * 
 */
public class FileChoserHelper {

	private static IRichDialogPanel rdc;

	private static Binary pdf;

	private static FileChoserReturn fileChoserReturn;

	/**
	 * Fonction qui permet de sauvegarder un fichier au format pdf en local sur
	 * un poste client
	 * 
	 * @param panel
	 * @param file
	 * @param fileName
	 * @param dialogTitle
	 * @param titleSuccess
	 * @param detailSuccess
	 * @param titleError
	 * @param detailError
	 * @param titleCancel
	 * @param detailCancel
	 * @param textOkButton
	 * @return
	 */
	public static synchronized FileChoserReturn storeStream(
			final String aUserAgent, IRichDialogPanel panel, Binary file,
			String fileName, final String dialogTitle,
			final String titleSuccess, final String detailSuccess,
			final String titleError, final String detailError,
			final String titleCancel, final String detailCancel,
			final String textOkButton) {
		rdc = panel;
		pdf = file;

		fileChoserReturn = new FileChoserReturn("", false);

		// CREATE THE DIALOG SAVE AS
		FileChooserConfig fcConfig = new FileChooserConfig();
		fcConfig.setDialogTitle(dialogTitle);
		fcConfig.addFileFilterConfig(new FileChooserConfig.FileFilterConfig(
				new String[] { ".pdf" }, "files (*.pdf)"));
		fcConfig.setSelectedFile(fileName);
		fcConfig.setDialogType(FileChooserConfig.SAVE_DIALOG);

		try {
			ClientContext.storeFile(new IFileStoreHandler() {
				private static final long serialVersionUID = 1L;

				public void prepareFile(OutputStream data) throws Exception {
					// PUT THE BYTES INTO THE OBJECT TO SAVE ON THE CLIENT
					data.write(pdf.toByteArray());
				}

				public void onSuccess(String filePath, String fileName) {
					fileChoserReturn.setFilePath(filePath);
					fileChoserReturn.setSuccess(true);

					String sFilePath = filePath;

					com.ulcjava.base.application.ULCAlert alert = new ULCAlert(
							titleSuccess, detailSuccess.concat(": ").concat(
									sFilePath), textOkButton);
					alert.setMessageType(ULCAlert.INFORMATION_MESSAGE);

					// ALERT SUCCESS
					alert.show();

					// add space in new file path
					String newFilePath = sFilePath;
					if (aUserAgent.indexOf("Firefox") > -1) {
						newFilePath = sFilePath.replaceAll(" ", "%20");
					} else if (aUserAgent.indexOf("MSIE") < 0) {
						newFilePath = sFilePath.replaceAll(" ", "%20");
					}

					ClientContext.showDocument("file://" + newFilePath);
					// System.out.println("Show Document. \nPath :
					// ".concat(sFilePath));
				}

				public void onFailure(int reason, String description) {

					fileChoserReturn.setFilePath("");
					fileChoserReturn.setSuccess(false);
					com.ulcjava.base.application.ULCAlert alert = null;

					if (reason == FAILED) {
						alert = new ULCAlert(titleError, detailError,
								textOkButton);
						alert.setMessageType(ULCAlert.ERROR_MESSAGE);

					} else if (reason == CANCELLED) {
						alert = new ULCAlert(titleCancel, detailCancel,
								textOkButton);
						alert.setMessageType(ULCAlert.WARNING_MESSAGE);

					} else {
						alert = new ULCAlert(titleError, detailError + " "
								+ ((description != null) ? description : ""),
								textOkButton);
						alert.setMessageType(ULCAlert.ERROR_MESSAGE);
					}

					// ALERT FAILLURE
					alert.show();
				}
			}, fcConfig, (com.ulcjava.base.application.ULCComponent) rdc);
		} catch (Exception e) {
			new Throwable(e);
		}

		return fileChoserReturn;
	}
}
