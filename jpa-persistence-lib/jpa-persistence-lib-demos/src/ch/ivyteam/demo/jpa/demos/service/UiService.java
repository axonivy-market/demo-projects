package ch.ivyteam.demo.jpa.demos.service;

import java.util.Arrays;
import java.util.Collection;
import java.util.function.Predicate;

import javax.faces.application.FacesMessage;
import javax.faces.application.FacesMessage.Severity;
import javax.faces.component.UIComponent;
import javax.faces.component.UIViewRoot;
import javax.faces.component.html.HtmlOutputLabel;
import javax.faces.component.visit.VisitCallback;
import javax.faces.component.visit.VisitContext;
import javax.faces.component.visit.VisitResult;
import javax.faces.context.FacesContext;

import org.apache.commons.lang.exception.ExceptionUtils;
import org.primefaces.PrimeFaces;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.log.Logger;

public class UiService {
	private static final Logger LOG = Logger.getLogger(UiService.class);

	/**
	 * Add a {@link FacesMessage} with the given severity, clientId and detail.
	 *
	 * @param severity
	 * @param clientId
	 * @param detail
	 */
	public static void addExceptionFacesMessage(Throwable t) {
		try {
			addFacesMessage(FacesMessage.SEVERITY_FATAL, "",
					Ivy.cms().co("/Labels/exceptionSummary"),
					Ivy.cms().co("/Labels/exceptionDetail", Arrays.asList(ExceptionUtils.getRootCauseMessage(t))));
		} catch (Throwable e) {
			LOG.error("Exception while trying to show exception", e);
			LOG.error("The original exception, which could not be shown was", t);

		}
	}

	/**
	 * Add a {@link FacesMessage} with the given severity, clientId, summary and detail.
	 *
	 * @param severity
	 * @param clientId
	 * @param summary
	 * @param detail
	 */
	public static void addFacesMessage(Severity severity, String clientId, String summary, String detail) {
		FacesContext.getCurrentInstance().addMessage(clientId, new FacesMessage(severity, summary, detail));
	}

	/**
	 * Return true if the are {@link FacesMessage}s in the {@link Collection} with a {@link Severity} at least the wanted one.
	 *
	 * @param messages
	 * @param severity
	 * @return
	 */
	public static boolean existFacesMessagesWithSeverityAtLeast(Collection<FacesMessage> messages, Severity severity) {
		return messages.stream().anyMatch(m -> m.getSeverity().compareTo(severity) >= 0);
	}

	/**
	 * Return true if there are {@link FacesMessage}s in the {@link FacesContext} with a {@link Severity} at least the wanted one.
	 *
	 * @param severity
	 * @return
	 */
	public static boolean existFacesMessagesWithSeverityAtLeast(Severity severity) {
		return existFacesMessagesWithSeverityAtLeast(FacesContext.getCurrentInstance().getMessageList(), severity);
	}

	/**
	 * Add css class to element with given id.
	 *
	 * @param clientId
	 * @param cssClass
	 */
	public static void addCssClass(String clientId, String cssClass) {
		if(cssClass != null) {
			PrimeFaces.current().executeScript("$(document.getElementById('" + clientId + "')).addClass('" + cssClass + "')");
		}
	}

	/**
	 * Finds component with the given id.
	 *
	 * @param root
	 * @param id
	 * @param findForLabel look in the for label attributes
	 * @return found component
	 */
	public static UIComponent findComponent(UIViewRoot root, String id, boolean findForLabel) {
		UIComponent[] found = new UIComponent[1];

		final Predicate<UIComponent> pred;

		if(findForLabel) {
			pred = c -> {
				if(c instanceof HtmlOutputLabel) {
					String labelFor = ((HtmlOutputLabel) c).getFor();
					if(labelFor != null && labelFor.endsWith(id)) {
						return true;
					}
				}
				return false;
			};
		}
		else {
			pred = c -> {
				return id.equals(c.getId());
			};
		}

		VisitCallback callback = new VisitCallback() {
			@Override
			public VisitResult visit(VisitContext context, UIComponent component) {
				if(pred.test(component)) {
					found[0] = component;
					return VisitResult.COMPLETE;
				}
				return VisitResult.ACCEPT;
			}
		};

		root.visitTree(VisitContext.createVisitContext(FacesContext.getCurrentInstance()), callback);

		return found[0];
	}

}
