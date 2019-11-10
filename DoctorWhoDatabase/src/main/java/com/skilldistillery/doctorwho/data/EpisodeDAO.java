package com.skilldistillery.doctorwho.data;

import java.util.List;

import javax.validation.Valid;

import com.skilldistillery.doctorwho.entities.Episode;

public interface EpisodeDAO {
	
	Episode findById(int id);
	List<Episode> findAll();
	Episode createEpisode(@Valid Episode episode);
	Episode updateEpisode(@Valid Episode episode, int epId);
	void deleteEpisode(@Valid Episode episode, int epId);
	


}
