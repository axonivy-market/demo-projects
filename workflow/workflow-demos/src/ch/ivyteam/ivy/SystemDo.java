package ch.ivyteam.ivy;

import ch.ivyteam.ivy.security.exec.Sudo;
import ch.ivyteam.ivy.workflow.ICase;
import ch.ivyteam.ivy.workflow.ITask;

public class SystemDo
{
  @SuppressWarnings("deprecation")
  public static void setCustomVarCharField1(final ITask task, final String val)
          throws Exception
  {
    Sudo.exec(() -> task.customFields().stringField("CustomVarCharField1").set(val));
  }

  @SuppressWarnings("deprecation")
  public static void setCaseName(final ICase icase, final String val)
          throws Exception
  {
    Sudo.exec(() -> icase.setName(val));
  }

  @SuppressWarnings("deprecation")
  public static void setCaseDescription(final ICase icase, final String val)
          throws Exception
  {
    Sudo.exec(() -> icase.setDescription(val));
  }

  @SuppressWarnings("deprecation")
  public static void setProcess(final ICase icase, final String code, final String val)
          throws Exception
  {
    Sudo.exec(() -> {
      icase.customFields().stringField("ProcessCode").set(code);
      icase.customFields().stringField("ProcessName").set(val);
    });
  }
}
