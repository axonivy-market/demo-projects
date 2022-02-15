package ch.ivyteam.demo.jpa.demos.service;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.YearMonth;
import java.util.Date;

import ch.ivyteam.demo.jpa.demos.Logger;

public class DateService {
	private static final Logger LOG = Logger.getLogger(DateService.class);


	private DateService() {
	}

	/**
	 * Convert a {@link Date} to a {@link LocalDate}.
	 * 
	 * @param date
	 * @return
	 */
	public static LocalDate dateToLocalDate(Date date) {
		return date != null ? new java.sql.Date(date.getTime()).toLocalDate() : null;
	}

	/**
	 * Convert a {@link LocalDate} to {@link Date}.
	 * 
	 * @param date
	 * @return
	 */
	public static java.sql.Date localDateToDate(LocalDate date) {
		return date != null ? java.sql.Date.valueOf(date) : null;
	}

	/**
	 * Convert a {@link LocalDateTime} to {@link Date}.
	 * 
	 * @param dateTime
	 * @return
	 */
	public static Date localDateTimeToDate(LocalDateTime dateTime) {
		return dateTime != null ? java.sql.Timestamp.valueOf(dateTime) : null;
	}

	/**
	 * Convert a {@link Date} to a {@link YearMonth}.
	 * 
	 * @param date
	 * @return
	 */
	public static YearMonth dateToYearMonth(Date date) {
		return date != null ? YearMonth.from(dateToLocalDate(date)) : null;
	}
}
