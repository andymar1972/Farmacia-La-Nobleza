package model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import database.MysqlDBConexion;
import entities.Usuario;
import interfaces.UsuarioModelInterface;

public class UsuarioModel implements UsuarioModelInterface {

	
	public List<Usuario> listarRegistro() {
   List <Usuario> listarReg=new ArrayList<Usuario>();
		
		Connection cn=null;
		PreparedStatement pstm =null;
		ResultSet rs =null;
		
		try {
			cn=MysqlDBConexion.getConexion();
			
			String sql = "select Dni_Usuario,Nombre_Usuario,Apellido_Usuario,Fec_Nac_Usuario,Celular_Usuario,Telefono_Usuario,Correo_Usuario from Usuario;";
		    
			pstm=cn.prepareStatement(sql);
			rs=pstm.executeQuery();
			
			while(rs.next()) {
				Usuario usuario=new Usuario();
				
				usuario.setDni_usuario(rs.getString("Dni_Usuario"));
				usuario.setNombre_usuario(rs.getString("Nombre_Usuario"));
				usuario.setApellido_usuario(rs.getString("Apellido_Usuario"));
				usuario.setFec_nac_usuario(rs.getString("Fec_Nac_Usuario"));
				usuario.setCelular_usuario(rs.getString("Celular_Usuario"));
				usuario.setTelefono_usuario(rs.getString("Telefono_Usuario"));
				usuario.setCorreo_usuario(rs.getString("Correo_Usuario"));
				
				listarReg.add(usuario);
			}
			
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return listarReg;
	}

	
	public int RegistroCompra(Usuario usaurio) {
		Usuario usuario=new Usuario();
		int banderita=-1;
		
		Connection cn =null;
		PreparedStatement pstm=null;
		
		try {
			cn=MysqlDBConexion.getConexion();
			String sql="insert into Usuario (Dni_Usuario, Nombre_Usuario, Apellido_Usuario, Fec_Nac_Usuario, Celular_Usuario, Telefono_Usuario, Correo_Usuario, Contrase�a) values(?,?,?,?,?,?,?,?);";
		    
			pstm=cn.prepareStatement(sql);
			pstm.setString(1, usuario.getDni_usuario());
			pstm.setString(2, usuario.getNombre_usuario());
			pstm.setString(3, usuario.getApellido_usuario());
			pstm.setString(4,  usuario.getFec_nac_usuario());
			pstm.setString(5, usuario.getCelular_usuario());
			pstm.setString(6, usuario.getTelefono_usuario());
			pstm.setString(7, usuario.getCorreo_usuario());
			pstm.setString(8, usuario.getPassword());
			
			banderita =pstm.executeUpdate();
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return banderita;
	}
	
	
	
	
	
	
	

}
