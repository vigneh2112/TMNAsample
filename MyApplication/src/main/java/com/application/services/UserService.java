package com.application.services;//persist the data from data base


import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

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
	public List<User>showAllUsers(){
		List<User>users=new ArrayList<User>();
		for(User user:userRepository.findAll()) {
			users.add(user);
		}
		return users;
	}
	
	public void deleteMyUser(int id) {
		userRepository.deleteById(id);
	}
	
	public User findByUsernameAndPassword(String username, String password) {
		return userRepository.findByUsernameAndPassword(username, password);
	}

}
