package ch.ivyteam.ivy.demo.enablers.Quiz;

import ch.ivyteam.ivy.demo.util.Title.TitlePanel;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RRadioButton;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RList;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.richdialog.widgets.components.RTree;
import ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import com.ulcjava.base.application.ULCButtonGroup;

/**
 * RichDialog panel implementation for FavouritesSelectorPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class QuizPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private TitlePanel titlePanel = null;
private RLabel questionLabel1 = null;
private RLabel questionLabel2 = null;
private RLabel questionLabel3 = null;
private RLabel questionLabel4 = null;
private RGridLayoutPane question1answers = null;
private RRadioButton q1one = null;
private RRadioButton q1three = null;
private RScrollPane question2scroller = null;
private RList question2answer = null;
private RButton verifyButton = null;
private RScrollPane question3scroller = null;
private RTree question3answer = null;
private RGridLayoutPane question4answers = null;
private RRadioButton q1two = null;
private RCheckBox q4one = null;
private RCheckBox q4two = null;
private RCheckBox q4three = null;
private RCheckBox q4four = null;
private RCheckBox q4five = null;
private RGridBagLayoutPane resultPane = null;
private RLabel resultLabel = null;
private ULCButtonGroup q1group = null;  //  @jve:decl-index=0:visual-constraint="515,226"
/**
   * Create a new instance of FavouritesSelectorPanel
   */
  public QuizPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes FavouritesSelectorPanel
   * @return void
   */
  private void initialize()
  {
        RFiller vertFiller = new RFiller();
        vertFiller.setStyle("verticalGlue");
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(454,413));
        this.add(getTitlePanel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getQuestionLabel1(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getQuestionLabel2(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getQuestionLabel3(), new com.ulcjava.base.application.GridBagConstraints(0, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getQuestionLabel4(), new com.ulcjava.base.application.GridBagConstraints(0, 7, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getQuestion1answers(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,5,0,5), 0, 0));
        this.add(getQuestion2scroller(), new com.ulcjava.base.application.GridBagConstraints(0, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,5,0,5), 0, 0));
        this.add(getQuestion3scroller(), new com.ulcjava.base.application.GridBagConstraints(0, 6, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,5,0,5), 0, 0));
        this.add(getQuestion4answers(), new com.ulcjava.base.application.GridBagConstraints(0, 8, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getResultPane(), new com.ulcjava.base.application.GridBagConstraints(0, 14, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(vertFiller, new com.ulcjava.base.application.GridBagConstraints(0, 13, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes titlePanel	
 * 	
 * @return ch.ivyteam.ivy.demo.util.WizardTitle.TitlePanel	
 */
private TitlePanel getTitlePanel() {
	if (titlePanel == null) {
		titlePanel = new TitlePanel();
		titlePanel.setName("titlePanel");
		titlePanel.setPreferredSize(null);
		titlePanel.setStyleProperties("{/backgroundColor {/b \"255\"/r \"255\"/g \"255\"}/anchor \"NORTH\"/opaque \"true\"}");
	}
	return titlePanel;
}

/**
 * This method initializes questionLabel1	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getQuestionLabel1() {
	if (questionLabel1 == null) {
		questionLabel1 = new RLabel();
		questionLabel1.setText("What is the name of the poker hand containing three of a kind and a pair? ");
		questionLabel1.setIconUri("/Images/question");
		questionLabel1.setStyle("left-fill-horiz-border");
		questionLabel1.setName("questionLabel1");
	}
	return questionLabel1;
}

/**
 * This method initializes questionLabel2	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getQuestionLabel2() {
	if (questionLabel2 == null) {
		questionLabel2 = new RLabel();
		questionLabel2.setText("Who was the 43rd president of the united states?");
		questionLabel2.setIconUri("/Images/question");
		questionLabel2.setStyle("left-fill-horiz-border");
		questionLabel2.setName("questionLabel2");
	}
	return questionLabel2;
}

/**
 * This method initializes questionLabel3	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getQuestionLabel3() {
	if (questionLabel3 == null) {
		questionLabel3 = new RLabel();
		questionLabel3.setText("In which country is Timbuktu?");
		questionLabel3.setIconUri("<%= ivy.cms.cr(\"/Images/question\") %>");
		questionLabel3.setStyle("left-fill-horiz-border");
		questionLabel3.setName("questionLabel3");
	}
	return questionLabel3;
}

/**
 * This method initializes questionLabel4	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getQuestionLabel4() {
	if (questionLabel4 == null) {
		questionLabel4 = new RLabel();
		questionLabel4.setText("What is (are) the correct name(s) for 8 bits in computer science?");
		questionLabel4.setIconUri("<%= ivy.cms.cr(\"/Images/question\") %>");
		questionLabel4.setStyle("left-fill-horiz-border");
		questionLabel4.setName("questionLabel4");
	}
	return questionLabel4;
}

/**
 * This method initializes question1answers	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridLayoutPane	
 */
private RGridLayoutPane getQuestion1answers() {
	if (question1answers == null) {
		question1answers = new RGridLayoutPane();
		question1answers.setName("question1answers");
		question1answers.add(getQ1one());
		question1answers.add(getQ1two());
		question1answers.add(getQ1three());
	}
	return question1answers;
}

/**
 * This method initializes q1one	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RRadioButton	
 */
private RRadioButton getQ1one() {
	if (q1one == null) {
		q1one = new RRadioButton();
		q1one.setText("Triple and Two");
		q1one.setGroup(getQ1group());
		q1one.setName("q1one");
	}
	return q1one;
}

/**
 * This method initializes q1three	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RRadioButton	
 */
private RRadioButton getQ1three() {
	if (q1three == null) {
		q1three = new RRadioButton();
		q1three.setText("Full House");
		q1three.setGroup(getQ1group());
		q1three.setName("q1three");
	}
	return q1three;
}

/**
 * This method initializes question2scroller	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getQuestion2scroller() {
	if (question2scroller == null) {
		question2scroller = new RScrollPane();
		question2scroller.setName("question2scroller");
		question2scroller.setStyleProperties("{/weightY \"1\"}");
		question2scroller.setViewPortView(getQuestion2answer());
	}
	return question2scroller;
}

/**
 * This method initializes question2answer	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RList	
 */
private RList getQuestion2answer() {
	if (question2answer == null) {
		question2answer = new RList();
		question2answer.setName("question2answer");
	}
	return question2answer;
}

/**
 * This method initializes verifyButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getVerifyButton() {
	if (verifyButton == null) {
		verifyButton = new RButton();
		verifyButton.setText("Tell me if I'm right");
		verifyButton.setIconUri("<%= ivy.cms.cr(\"/Images/lamp\") %>");
		verifyButton.setStyleProperties("{/insetsBottom \"5\"/insetsRight \"5\"}");
		verifyButton.setName("verifyButton");
	}
	return verifyButton;
}

/**
 * This method initializes question3scroller	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getQuestion3scroller() {
	if (question3scroller == null) {
		question3scroller = new RScrollPane();
		question3scroller.setName("question3scroller");
		question3scroller.setStyleProperties("{/weightY \"1\"}");
		question3scroller.setViewPortView(getQuestion3answer());
	}
	return question3scroller;
}

/**
 * This method initializes question3answer	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTree	
 */
private RTree getQuestion3answer() {
	if (question3answer == null) {
		question3answer = new RTree();
		question3answer.setName("question3answer");
		question3answer.setModelConfiguration("{/columns * /dynamicTreeLoadMode \"LOAD_FOR_RENDER_PARENT\"/version \"2.0\"}");
	}
	return question3answer;
}

/**
 * This method initializes question4answers	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridLayoutPane	
 */
private RGridLayoutPane getQuestion4answers() {
	if (question4answers == null) {
		question4answers = new RGridLayoutPane();
		question4answers.setName("question4answers");
		question4answers.add(getQ4one());
		question4answers.add(getQ4two());
		question4answers.add(getQ4three());
		question4answers.add(getQ4four());
		question4answers.add(getQ4five());
	}
	return question4answers;
}

/**
 * This method initializes q1two	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RRadioButton	
 */
private RRadioButton getQ1two() {
	if (q1two == null) {
		q1two = new RRadioButton();
		q1two.setText("Royal Flush");
		q1two.setGroup(getQ1group());
		q1two.setName("q1two");
	}
	return q1two;
}

/**
 * This method initializes q4one	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox	
 */
private RCheckBox getQ4one() {
	if (q4one == null) {
		q4one = new RCheckBox();
		q4one.setText("byte");
		q4one.setName("q4one");
	}
	return q4one;
}

/**
 * This method initializes q4two	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox	
 */
private RCheckBox getQ4two() {
	if (q4two == null) {
		q4two = new RCheckBox();
		q4two.setText("octet");
		q4two.setName("q4two");
	}
	return q4two;
}

/**
 * This method initializes q4three	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox	
 */
private RCheckBox getQ4three() {
	if (q4three == null) {
		q4three = new RCheckBox();
		q4three.setText("chunk");
		q4three.setName("q4three");
	}
	return q4three;
}

/**
 * This method initializes q4four	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox	
 */
private RCheckBox getQ4four() {
	if (q4four == null) {
		q4four = new RCheckBox();
		q4four.setText("sector");
		q4four.setName("q4four");
	}
	return q4four;
}

/**
 * This method initializes q4five	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox	
 */
private RCheckBox getQ4five() {
	if (q4five == null) {
		q4five = new RCheckBox();
		q4five.setText("block");
		q4five.setName("q4five");
	}
	return q4five;
}

/**
 * This method initializes resultPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getResultPane() {
	if (resultPane == null) {
		resultPane = new RGridBagLayoutPane();
		resultPane.setName("resultPane");
		resultPane.setStyleProperties("{/fill \"HORIZONTAL\"}");
		resultPane.add(getVerifyButton(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		resultPane.add(getResultLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return resultPane;
}

/**
 * This method initializes resultLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getResultLabel() {
	if (resultLabel == null) {
		resultLabel = new RLabel();
		resultLabel.setText("Answer the questions to enable the button -->");
		resultLabel.setStyle("left-fill-horiz-border");
		resultLabel.setStyleProperties("{/weightX \"1\"}");
		resultLabel.setName("resultLabel");
	}
	return resultLabel;
}

/**
 * This method initializes q1group	
 * 	
 * @return com.ulcjava.base.application.ULCButtonGroup	
 */
private ULCButtonGroup getQ1group() {
	if (q1group == null) {
		q1group = new ULCButtonGroup();
	}
	return q1group;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"