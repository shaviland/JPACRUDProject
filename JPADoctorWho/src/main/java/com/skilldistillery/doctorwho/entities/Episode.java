package com.skilldistillery.doctorwho.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Episode {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String era;
	private int season;
	private int episodeNum;
	private String title;
	private String description;
	private int doctor;
	private String villain;
	private String planet;
	private String yearSet;
	
	
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getYearSet() {
		return yearSet;
	}

	public void setYearSet(String yearSet) {
		this.yearSet = yearSet;
	}

	//Constructor		
	public Episode() {
		super();
	}


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEra() {
		return era;
	}

	public void setEra(String era) {
		this.era = era;
	}

	public int getSeason() {
		return season;
	}

	public void setSeason(int season) {
		this.season = season;
	}

	public int getEpisodeNum() {
		return episodeNum;
	}

	public void setEpisodeNum(int episodeNum) {
		this.episodeNum = episodeNum;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getDoctor() {
		return doctor;
	}

	public void setDoctor(int doctor) {
		this.doctor = doctor;
	}

	public String getVillain() {
		return villain;
	}

	public void setVillain(String villain) {
		this.villain = villain;
	}

	public String getPlanet() {
		return planet;
	}

	public void setPlanet(String planet) {
		this.planet = planet;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((description == null) ? 0 : description.hashCode());
		result = prime * result + doctor;
		result = prime * result + episodeNum;
		result = prime * result + ((era == null) ? 0 : era.hashCode());
		result = prime * result + id;
		result = prime * result + ((planet == null) ? 0 : planet.hashCode());
		result = prime * result + season;
		result = prime * result + ((title == null) ? 0 : title.hashCode());
		result = prime * result + ((villain == null) ? 0 : villain.hashCode());
		result = prime * result + ((yearSet == null) ? 0 : yearSet.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Episode other = (Episode) obj;
		if (description == null) {
			if (other.description != null)
				return false;
		} else if (!description.equals(other.description))
			return false;
		if (doctor != other.doctor)
			return false;
		if (episodeNum != other.episodeNum)
			return false;
		if (era == null) {
			if (other.era != null)
				return false;
		} else if (!era.equals(other.era))
			return false;
		if (id != other.id)
			return false;
		if (planet == null) {
			if (other.planet != null)
				return false;
		} else if (!planet.equals(other.planet))
			return false;
		if (season != other.season)
			return false;
		if (title == null) {
			if (other.title != null)
				return false;
		} else if (!title.equals(other.title))
			return false;
		if (villain == null) {
			if (other.villain != null)
				return false;
		} else if (!villain.equals(other.villain))
			return false;
		if (yearSet == null) {
			if (other.yearSet != null)
				return false;
		} else if (!yearSet.equals(other.yearSet))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Episode [id=" + id + ", era=" + era + ", season=" + season + ", episodeNum=" + episodeNum + ", title="
				+ title + ", description=" + description + ", doctor=" + doctor + ", villain=" + villain + ", planet="
				+ planet + ", yearSet=" + yearSet + "]";
	}

	
	
}
