package ch.ivyteam.demo.jpa.demos.test.ui;

import java.io.FileNotFoundException;
import java.io.InputStream;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

import org.primefaces.model.DefaultStreamedContent;
import org.primefaces.model.StreamedContent;

import ch.ivyteam.demo.jpa.demos.test.service.TestService;

import ch.ivyteam.demo.jpa.demos.Logger;

@ManagedBean(name = "test")
@ViewScoped
public class TestBean {
	private static final Logger LOG = Logger.getLogger(TestBean.class);

	public StreamedContent getDBExport() throws FileNotFoundException {

		InputStream dbExportStream = TestService.getDBExport();

		StreamedContent content = new DefaultStreamedContent(dbExportStream, "application/vnd.ms-excel", "testdata.xls");

		return content;
	}
}
