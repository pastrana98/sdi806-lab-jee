package ejercicioAdicional;

import java.util.LinkedList;
import java.util.List;

import com.db4o.Db4oEmbedded;
import com.db4o.ObjectContainer;
import com.uniovi.sdi.Producto;

public class ComentariosService {

	public List<Comentario> getComentarios() {
		List<Comentario> comentarios = new LinkedList<Comentario>();
		ObjectContainer dbc = null;
		try {
			dbc = Db4oEmbedded.openFile("bdComentarios");
			List<Comentario> respuesta = dbc.queryByExample(Comentario.class);
			// NO RETORNAR LA MISMA LISTA DE LA RESPUESTA
			comentarios.addAll(respuesta);

		} finally {
			dbc.close();
		}
		return comentarios;
	}

	public void setNuevoComentario(Comentario nuevoProducto) {
		ObjectContainer db = null;
		try {
			db = Db4oEmbedded.openFile("bdComentarios");
			db.store(nuevoProducto);
		} finally {
			db.close();
		}
	}
}
