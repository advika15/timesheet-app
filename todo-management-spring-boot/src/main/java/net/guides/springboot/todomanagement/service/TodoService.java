package net.guides.springboot.todomanagement.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.guides.springboot.todomanagement.model.Todo;
import net.guides.springboot.todomanagement.repository.TodoRepository;

@Service
public class TodoService implements ITodoService {
	
	//@Autowired
	//private TodoRepository todoRepository;

	@Override
	public List<Todo> getTodosByUser(String user) {
		//return todoRepository.findByUserName(user);
		Todo todo= new Todo("aaa", "DESC",  new Date() , true);
		List list=new ArrayList<Todo>();
		list.add(todo);
		return list;
	}

	@Override
	public Optional<Todo> getTodoById(long id) {
		//return todoRepository.findById(id);
		Todo todo= new Todo("aaa", "DESC",  new Date() , true);
		ArrayList<Todo> list=new ArrayList<Todo>();
		return Optional.of(todo);
	}

	@Override
	public void updateTodo(Todo todo) {
		//todoRepository.save(todo);
	}

	@Override
	public void addTodo(String name, String desc, Date targetDate, boolean isDone) {
		//todoRepository.save(new Todo(name, desc, targetDate, isDone));
	}

	@Override
	public void deleteTodo(long id) {
		/*
		 * Optional<Todo> todo = todoRepository.findById(id); if (todo.isPresent()) {
		 * todoRepository.delete(todo.get()); }
		 */
	}

	@Override
	public void saveTodo(Todo todo) {
		//todoRepository.save(todo);
	}
}