package com.application.services;//persist the data from data base

import org.springframework.stereotype.Service;

import com.application.modal.User;
import com.application.repository.UserRepository;

import jakarta.transaction.Transactional;


@Service
@Transactional
public class UserService {
	private final UserRepository userRepository;
	public UserService(UserRepository userRepository){
		this.userRepository=userRepository;
	}
	public  void  saveMyUser( User user) {
		
		userRepository.save (user);
	}
	
	
	

}
