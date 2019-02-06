package ejercicioAdicional;

public class Comentario {

	private String usuario;
	private String comentario;
	
	public Comentario() {
		
	}

	public Comentario(String usuario, String comentario) {
		super();
		this.usuario = usuario;
		this.comentario = comentario;
	}

	public String getUsuario() {
		return usuario;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	public String getComentario() {
		return comentario;
	}

	public void setComentario(String comentario) {
		this.comentario = comentario;
	}
	
	
}
