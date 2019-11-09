package com.skilldistillery.entities;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.Column;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import com.skilldistillery.doctorwho.entities.Episode;

class EpisodeTest {
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Episode episode;
	

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("DoctorWho");
		
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		episode = em.find(Episode.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		episode = null;
		em.close();
	}
//	private int id;
//	private String era;
//	private int season;
//	@Column(name = "episode_number")
//	private int episodeNum;
//	private String title;
//	private String description;
//	private int doctor;
//	private String villain;
//	private String planet;
//	@Column(name = "year_set")
//	private String yearSet;

	@Test
	@DisplayName("testing entity mapping for Episode era" )
	void era() {
		assertEquals("Revived", episode.getEra() );
	}
	@Test
	@DisplayName("testing entity mapping for Episode season" )
	void season() {
		assertEquals(1, episode.getSeason() );
	}
	@Test
	@DisplayName("testing entity mapping for Episode episode number" )
	void episodeNum() {
		assertEquals(1, episode.getEpisodeNum() );
	}
	@Test
	@DisplayName("testing entity mapping for Episode title" )
	void title() {
		assertEquals("Rose", episode.getTitle() );
	}
	@Test
	@DisplayName("testing entity mapping for Episode description" )
	void description() {
		assertTrue( episode.getDescription().contains("middle of the Doctor’s plot to prevent") );
	}
	@Test
	@DisplayName("testing entity mapping for Episode villain" )
	void villain() {
		assertTrue(episode.getVillain().contains("The  Nestene Consciousness") );
	}
	@Test
	@DisplayName("testing entity mapping for Episode planet" )
	void planet() {
		assertEquals("Earth", episode.getPlanet());
	}
	@Test
	@DisplayName("testing entity mapping for Episode year set" )
	void yearSet() {
		assertEquals("2005", episode.getYearSet());
	}

}
