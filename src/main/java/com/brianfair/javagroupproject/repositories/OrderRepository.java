package com.brianfair.javagroupproject.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.brianfair.javagroupproject.models.Order;



@Repository
public interface OrderRepository extends CrudRepository<Order,  Long>
{
	List<Order> findAll();
	
//	List<Show> findAllByOrderByLikersAsc();
	
//	@Modifying
//	@Query("update Idea idea set idea.content=?1 where idea.id=?2")
//	int updateIdea(String content, Long id);
    
}