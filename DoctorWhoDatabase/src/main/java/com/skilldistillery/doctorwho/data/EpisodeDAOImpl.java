package com.skilldistillery.doctorwho.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import javax.validation.Valid;

import org.springframework.stereotype.Service;

import com.skilldistillery.doctorwho.entities.Episode;

@Transactional
@Service
public class EpisodeDAOImpl implements EpisodeDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public Episode findById(int id) {
		return em.find(Episode.class, id);
	}

	@Override
	public List<Episode> findAll() {

		String sql = "SELECT ep_info FROM Episode ep_info";
		List<Episode> epList = em.createQuery(sql, Episode.class).getResultList();

		return epList;
	}

	@Override
	public Episode createEpisode(@Valid Episode episode) {

		
		
		return null;
	}

}
