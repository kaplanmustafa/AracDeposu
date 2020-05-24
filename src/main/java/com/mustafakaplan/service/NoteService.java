package com.mustafakaplan.service;

import java.util.ArrayList;

import javax.persistence.Query;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mustafakaplan.dao.NoteDAO;
import com.mustafakaplan.dto.UserLoginDTO;
import com.mustafakaplan.entity.Notes;
import com.mustafakaplan.entity.Users;
import com.mustafakaplan.security.LoginFilter;

@Service
@Transactional
public class NoteService 
{
	@Autowired
	private UserService userService;
	
	@Autowired
	private NoteDAO noteDao;
	
	public Long createNote(Notes note, HttpServletRequest request)
	{
		note.setUser_id(LoginFilter.user.getId());
		return noteDao.insert(note);
	}
	
	public Long updateNote(Notes note, HttpServletRequest request)
	{
		noteDao.update(note);
		return 1l;
	}
	

	public Long deleteNote(Notes note, HttpServletRequest request)
	{
		noteDao.delete(note);
		return 1l;
	}
	
	public ArrayList<Notes> getAll()
	{
		return noteDao.getAll();
	}
	
	public ArrayList<Notes> getAll(Long userId)
	{
		return noteDao.getAll(userId);
	}
	
	public Notes getFindByNoteId(Long noteId)
	{
		return noteDao.getFindByNoteId(noteId);
	}
	
	public ArrayList<Notes> getAll(UserLoginDTO login)
	{
		Users user2 = new Users();
		user2.setUsername(login.getUsername());
		user2.setPassword(login.getPassword());
		
		Users user = userService.getFindByUsernameAndPass(user2);
		
		return noteDao.getAll(user.getId());
	}
}
