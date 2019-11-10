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
		em.persist(episode);
		em.flush();
		return episode;
	}

	@Override
	public Episode updateEpisode(@Valid Episode episode, int epId) {
		
		Episode updateEpisode = em.find(Episode.class, epId);
	
		updateEpisode.setEra(episode.getEra());
		updateEpisode.setSeason(episode.getSeason());
		updateEpisode.setEpisodeNum(episode.getEpisodeNum());
		updateEpisode.setTitle(episode.getTitle());
		updateEpisode.setDescription(episode.getDescription());
		updateEpisode.setDoctor(episode.getDoctor());
		updateEpisode.setVillain(episode.getVillain());
		updateEpisode.setPlanet(episode.getPlanet());
		updateEpisode.setYearSet(episode.getYearSet());
		em.flush();
		
		return updateEpisode;
	}

	@Override
	public void deleteEpisode(@Valid Episode episode, int epId) {
		Episode deleteEpisode = em.find(Episode.class, epId);
		em.remove(deleteEpisode);
		em.flush();
		
	}

}
