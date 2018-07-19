package it.accenture.model;

public enum TipoSpedizione {

//commento
	IN_GIORNATA(10),
	NORMALE(5),
	GRATUITA(0);
	
	private int IncrementoSpedizione;

	private TipoSpedizione(int incrementoSpedizione) {
		IncrementoSpedizione = incrementoSpedizione;
	}

	public int getIncrementoSpedizione() {
		return IncrementoSpedizione;
	}

	public void setIncrementoSpedizione(int incrementoSpedizione) {
		IncrementoSpedizione = incrementoSpedizione;
				}

}
