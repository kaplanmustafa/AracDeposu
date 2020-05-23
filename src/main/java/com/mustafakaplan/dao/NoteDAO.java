package com.mustafakaplan.dao;

import java.util.ArrayList;

import javax.persistence.Query;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.mustafakaplan.entity.Note;

public class NoteDAO 
{
	@Autowired
	private SessionFactory sessionFactory;
	
	// CRUD
	
	public Long insert(Note note)
	{
		return (Long) sessionFactory.getCurrentSession().save(note);
	}
	
	public void update(Note note)
	{
		sessionFactory.getCurrentSession().update(note);
	}
	
	public void persist(Note note) // Id deðeri tabloda varsa o kaydý günceller yoksa o kaydý ekler
	{
		sessionFactory.getCurrentSession().persist(note);
	}
	
	public void delete(Note note)
	{
		sessionFactory.getCurrentSession().delete(note);
	}
	
	public ArrayList<Note> getAll()
	{
		Query query = sessionFactory.getCurrentSession().createQuery("FROM Note"); // Note -> tablo adý deðil class adý
		
		return (ArrayList<Note>) query.getResultList();
	}
	
	public ArrayList<Note> getAll(Long user_id)
	{
		Query query = sessionFactory.getCurrentSession().createQuery("FROM Note WHERE user_id=:arananId order by id desc")
				.setLong("arananId", user_id);
		
		return (ArrayList<Note>) query.getResultList();
	}
	
	public Note getFindByNoteId(Long noteId)
	{
		Query query = sessionFactory.getCurrentSession().createQuery("FROM Note WHERE id=:arananId")
				.setLong("arananId", noteId);
		
		return (Note) query.getSingleResult();
	}
}
