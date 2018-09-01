package biblio;


public class Book {
	
	int livre_id;
	String nom;
	String author;
	String iSBN;

	public int getIdLivre() {
		return livre_id;
	}
	public void setIdLivre(int idLivre) {
		this.livre_id = idLivre;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getISBN() {
		return iSBN;
	}
	public void setISBN(String iSBN) {
		this.iSBN = iSBN;
	}
}
