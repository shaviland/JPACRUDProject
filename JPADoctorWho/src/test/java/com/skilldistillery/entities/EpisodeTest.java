package com.skilldistillery.entities;

import static org.junit.jupiter.api.Assertions.*;

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
//	Season
//	Episode #
//	Description
//	Doctor
//	Villain
//	Planet
//	Year

	@Test
	@DisplayName("testing entity mapping for Episode season" )
	void season() {
		assertEquals(10, episode.getSeason() );
	}

}
