package ch.ivyteam.demo.jpa.demos.test;

import org.hibernate.dialect.HSQLDialect;

/**
 * Avoid the drop messages of hbm2autodll.
 */
public class BetterDroppingHSQLDialect extends HSQLDialect {
	@Override
	public boolean dropConstraints() {
		return false;
	}

	@Override
	public boolean supportsIfExistsBeforeTableName() {
		return true;
	}

	@Override
	public boolean supportsIfExistsAfterTableName() {
		return false;
	}

	@Override
	public String getCascadeConstraintsString() {
		return " CASCADE ";
	}
}
