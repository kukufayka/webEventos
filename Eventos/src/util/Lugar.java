package util;
// Generated 24-abr-2016 18:09:51 by Hibernate Tools 4.3.1.Final

import java.util.HashSet;
import java.util.Set;

/**
 * Lugar generated by hbm2java
 */
public class Lugar implements java.io.Serializable {

	private int idLugar;
	private String tipoLugar;
	private String nombreLugar;
	private String horario;
	private String direccion;
	private String localidad;
	private String provincia;
	private String telefono;
	private String email;
	private String url;
	private Set eventos = new HashSet(0);

	public Lugar() {
	}

	public Lugar(int idLugar, String tipoLugar, String nombreLugar, String horario, String direccion, String localidad,
			String provincia, String telefono, String email, String url) {
		this.idLugar = idLugar;
		this.tipoLugar = tipoLugar;
		this.nombreLugar = nombreLugar;
		this.horario = horario;
		this.direccion = direccion;
		this.localidad = localidad;
		this.provincia = provincia;
		this.telefono = telefono;
		this.email = email;
		this.url = url;
	}

	public Lugar(int idLugar, String tipoLugar, String nombreLugar, String horario, String direccion, String localidad,
			String provincia, String telefono, String email, String url, Set eventos) {
		this.idLugar = idLugar;
		this.tipoLugar = tipoLugar;
		this.nombreLugar = nombreLugar;
		this.horario = horario;
		this.direccion = direccion;
		this.localidad = localidad;
		this.provincia = provincia;
		this.telefono = telefono;
		this.email = email;
		this.url = url;
		this.eventos = eventos;
	}

	public int getIdLugar() {
		return this.idLugar;
	}

	public void setIdLugar(int idLugar) {
		this.idLugar = idLugar;
	}

	public String getTipoLugar() {
		return this.tipoLugar;
	}

	public void setTipoLugar(String tipoLugar) {
		this.tipoLugar = tipoLugar;
	}

	public String getNombreLugar() {
		return this.nombreLugar;
	}

	public void setNombreLugar(String nombreLugar) {
		this.nombreLugar = nombreLugar;
	}

	public String getHorario() {
		return this.horario;
	}

	public void setHorario(String horario) {
		this.horario = horario;
	}

	public String getDireccion() {
		return this.direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getLocalidad() {
		return this.localidad;
	}

	public void setLocalidad(String localidad) {
		this.localidad = localidad;
	}

	public String getProvincia() {
		return this.provincia;
	}

	public void setProvincia(String provincia) {
		this.provincia = provincia;
	}

	public String getTelefono() {
		return this.telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUrl() {
		return this.url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Set getEventos() {
		return this.eventos;
	}

	public void setEventos(Set eventos) {
		this.eventos = eventos;
	}

}
