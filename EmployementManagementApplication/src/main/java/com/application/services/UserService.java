package com.application.services;//persist the data from data base


import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.application.modal.User;
import com.application.repository.UserRepository;



@Service
@Transactional
public class UserService {
	private final UserRepository _userRepository;//instance of User repository
	//constructor of UserRepository
	public UserService(UserRepository userRepository){
		this._userRepository=userRepository;
	}
	
	//save
	public  void  saveMyUser( User user) {		
		_userRepository.save (user);
	}
	
	//List method to  show all users 
	public List<User> showAllUsers() {
        List<User> users = new ArrayList<>();
        _userRepository.findAll().forEach(user -> users.add(user));
        return users;
    }
	
	//delete
	public void deleteMyUser(int id) {
        ((Collection<User>) _userRepository.findAll()).stream()
            .filter(user -> user.getId() == id)
            .findFirst()
            .ifPresent(user -> _userRepository.delete(user));
    }
	
	//findById
	public Optional<User> findById(int id) {
		 return _userRepository.findById(id);
	}
	
	public User findByUsernameAndPassword(String username, String password) {
		return _userRepository.findByUsernameAndPassword(username, password);
	}

}
