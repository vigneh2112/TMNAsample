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
	private final UserRepository _userRepository;
	
	public UserService(UserRepository userRepository){
		this._userRepository=userRepository;
	}
	
	//save
	public  void  saveMyUser( User user) {		
		_userRepository.save (user);
	}
	
	//List
	public List<User> showAllUsers(){
		List<User>users=new ArrayList<User>();
		for(User user: _userRepository.findAll()) {
			users.add(user);
		}
		return users;
	}
	
	//delete
	public void deleteMyUser(int id) {
		_userRepository.deleteById(id);
	}
	
	//findById
	public Optional<User> findById(int id) {
		 return _userRepository.findById(id);
	}
	
	public User findByUsernameAndPassword(String username, String password) {
		return _userRepository.findByUsernameAndPassword(username, password);
	}

}
