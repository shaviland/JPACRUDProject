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
	private int season;
	private int episodeNum;
	private String description;
	private int doctor;
	private String villain;
	private String planet;
	private int year;
	
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

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((description == null) ? 0 : description.hashCode());
		result = prime * result + doctor;
		result = prime * result + episodeNum;
		result = prime * result + id;
		result = prime * result + ((planet == null) ? 0 : planet.hashCode());
		result = prime * result + season;
		result = prime * result + ((villain == null) ? 0 : villain.hashCode());
		result = prime * result + year;
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
		if (id != other.id)
			return false;
		if (planet == null) {
			if (other.planet != null)
				return false;
		} else if (!planet.equals(other.planet))
			return false;
		if (season != other.season)
			return false;
		if (villain == null) {
			if (other.villain != null)
				return false;
		} else if (!villain.equals(other.villain))
			return false;
		if (year != other.year)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Episode [id=" + id + ", season=" + season + ", episodeNum=" + episodeNum + ", description="
				+ description + ", doctor=" + doctor + ", villain=" + villain + ", planet=" + planet + ", year=" + year
				+ "]";
	}

	
	
}
