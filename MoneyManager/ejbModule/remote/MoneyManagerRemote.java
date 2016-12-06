package remote;

import javax.ejb.Remote;

@Remote
public interface MoneyManagerRemote {

    double calculTTCFrance( Double prixHT, String categorie );

    double convertTo( double value, String type );

}