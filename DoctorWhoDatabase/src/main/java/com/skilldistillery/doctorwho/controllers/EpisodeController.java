package com.skilldistillery.doctorwho.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.doctorwho.data.EpisodeDAO;
import com.skilldistillery.doctorwho.entities.Episode;

@Controller
public class EpisodeController {

	@Autowired
	EpisodeDAO epDAO;

	@RequestMapping(path = "goHome.do", method = RequestMethod.GET)
	public String index(Model model) {
		
		List<Episode> episode = epDAO.findAll();
		
		model.addAttribute("episodes", episode);
		
		return "index";
		
	}
	@RequestMapping(path = "viewEpisodes.do", method = RequestMethod.GET)
	public String viewEpisodes(Model model) {

		List<Episode> episode = epDAO.findAll();

		model.addAttribute("episodes", episode);

		return "episode/view-episodes";

	}

	@RequestMapping(path = "getEpisode.do", method = RequestMethod.GET)
	public ModelAndView getFilm(@RequestParam("fid") int fid) {
		ModelAndView mv = new ModelAndView();

		Episode episode = epDAO.findById(fid);
		if(episode == null) {
			mv.setViewName("episode/not-found");
		}else {
		mv.addObject("episode", episode);
		mv.setViewName("episode/show");
		}
		return mv;
	}

	@RequestMapping(path = "createEpisode.do", method = RequestMethod.GET)
	public ModelAndView goToCreateFilm(@Valid Episode episode) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("episode/create-episode");
		return mv;
	}

	@RequestMapping(path = "addEpisode.do", method = RequestMethod.GET)
	public ModelAndView goAddFilm(@Valid Episode episode) {
		ModelAndView mv = new ModelAndView();
		Episode newEpisode = epDAO.createEpisode(episode);
		mv.addObject("episode", newEpisode);
		mv.setViewName("episode/show");
		return mv;
	}

	@RequestMapping(path = "getOrigEpisode.do", params = "epId", method = RequestMethod.GET)
	public ModelAndView getOrigEpisode(@Valid Episode origEpisode, int epId) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("origEpisode", epDAO.findById(epId));
		mv.setViewName("episode/update-episode");
		return mv;
	}

	@RequestMapping(path = "updateEpisode.do", params = "epId", method = RequestMethod.GET)
	public ModelAndView updateEpisode(@Valid Episode episode, int epId) {
		ModelAndView mv = new ModelAndView();
		Episode updatedEpisode = epDAO.updateEpisode(episode, epId);
		mv.addObject("episode", updatedEpisode);
		mv.setViewName("episode/show");
		return mv;

	}
	@RequestMapping(path = "deleteEpisode.do", params = "epId", method = RequestMethod.GET)
	public ModelAndView deleteEpisode(@Valid Episode episode, int epId) {
		ModelAndView mv = new ModelAndView();
		epDAO.deleteEpisode(episode, epId);
		mv.setViewName("episode/delete-episode");
		return mv;
	}

}
