package com.application.repository;

import org.springframework.data.repository.CrudRepository;

import com.application.modal.User;

public interface UserRepository extends CrudRepository<User, Integer> {
	public User findByUsernameAndPassword(String username, String password);
}
