package edu.poly.shop.service;

import javax.mail.MessagingException;

import edu.poly.shop.model.Email;

public interface EmailService {

	void send(Email email) throws MessagingException;

	void send(String to, String subject, String body) throws MessagingException;

}
