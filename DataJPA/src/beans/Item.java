package beans;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table( name = "ITEMS" )
public class Item implements Serializable {

    @Id
    @GeneratedValue( strategy = GenerationType.IDENTITY )
    private long   ID;

    private String designation;
    private String description;
    private String tags[];
    private String categorie;
    private String img;

    private int    quantiteRestante;
    private double prixHT;
    private double prixTTC;

    public long getID() {
        return ID;
    }

    public void setID( long iD ) {
        ID = iD;
    }

    public String getDesignation() {
        return designation;
    }

    public void setDesignation( String designation ) {
        this.designation = designation;
    }

    public String getCategorie() {
        return categorie;
    }

    public void setCategorie( String categorie ) {
        this.categorie = categorie;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription( String description ) {
        this.description = description;
    }

    public int getQuantiteRestante() {
        return quantiteRestante;
    }

    public void setQuantiteRestante( int quantiteRestante ) {
        this.quantiteRestante = quantiteRestante;
    }

    public String[] getTags() {
        return tags;
    }

    public void setTags( String[] tag ) {
        this.tags = tag;
    }

    public String getImg() {
        return img;
    }

    public void setImg( String img ) {
        this.img = img;
    }

    public double getPrixHT() {
        return prixHT;
    }

    public void setPrixHT( double prixHT ) {
        this.prixHT = prixHT;
    }

    public double getPrixTTC() {
        return prixTTC;
    }

    public void setPrixTTC( double prixTTC ) {
        this.prixTTC = prixTTC;
    }

}
