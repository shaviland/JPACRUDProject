package com.skilldistillery.doctorwho.controllers;

import java.sql.SQLException;
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

	@RequestMapping(path = "/", method = RequestMethod.GET)
	public String index(Model model) {

		List<Episode> episode = epDAO.findAll();

		model.addAttribute("episodes", episode);

		return "index";

	}
	
	@RequestMapping(path = "getEpisode.do", method = RequestMethod.GET)
	public ModelAndView getFilm(@RequestParam("fid") int fid) {
		ModelAndView mv = new ModelAndView();

		Episode episode = epDAO.findById(fid);

		mv.addObject("episode", episode);
		mv.setViewName("episode/show");
		return mv;
	}
	
	@RequestMapping(path = "createEpisode.do", method = RequestMethod.GET)
    public ModelAndView goToCreateFilm(@Valid Episode episode) {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("episode/create-episode");
        return mv;
    }
    @RequestMapping(path = "createdEpisode.do", method = RequestMethod.POST)
    public ModelAndView goToCreatedFilm(@Valid Episode episode) throws SQLException {
        ModelAndView mv = new ModelAndView();
        Episode newEpisode = epDAO.createEpisode(episode);
        mv.addObject("episode", newEpisode);
        mv.setViewName("episode/show");
        return mv;
    }

}
