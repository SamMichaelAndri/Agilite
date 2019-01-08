package main;

import java.util.ArrayList;

/**
 * Décrivez votre classe Course ici.
 *
 * @author (votre nom)
 * @version (un numéro de version ou une date)
 */
public class Course {
	private String lieu;
	private int tour;
	private ArrayList<Participant> liste;

	/**
	 * Constructeur d'objets de classe Course
	 */
	public Course(String lieu, int tour) {
		// initialisation des variables d'instance
		this.lieu = lieu;
		this.tour = tour;
		this.liste = new ArrayList();
	}

	/**
	 * @param y  le paramètre de la méthode
	 * @return la modification du lieu
	 */
	public void setLieu(String y) {
		// Insérez votre code ici
		this.lieu = y;
	}

	/**
	 * @return le lieu
	 */
	public String getLieu() {
		// Insérez votre code ici
		return lieu;
	}

	/**
	 * @param y le paramètre de la méthode
	 * @return la modification du tour
	 */
	public void setTour(int y) {
		// Insérez votre code ici
		this.tour = y;
	}

	/**
	 * @return la tour
	 */
	public int getTour() {
		// Insérez votre code ici
		return tour;
	}

	/**
	 * @param y le paramètre de la méthode
	 * @return la tour
	 */
	public int ajoutTour(int y) {
		// Insérez votre code ici
		return this.tour = this.tour + y;
	}

	public int addParticipant(Participant p) {
		this.liste.add(p);
		return this.liste.size();
	}
}
