
package Modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UsuarioDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r;
    
    public Usuario Validar(String user, String rut){
        Usuario us = new Usuario();
        String sql = "select * from usuario where User =? and Rut =?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, rut);
            rs = ps.executeQuery();
            
            while (rs.next()) {  
                us.setId(rs.getInt("Id"));
                us.setUser(rs.getString("User"));
                us.setNombres(rs.getString("Nombres"));
                us.setRut(rs.getString("Rut"));
            }
        } catch (SQLException e) {
        }
        return us;
    }
    
    //Operaciones CRUD
    public List listar(){
        String sql = "select * from usuario";
        List<Usuario>lista = new ArrayList<>();
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {                
                Usuario us =new Usuario();
                us.setId(rs.getInt(1));
                us.setRut(rs.getString(2));
                us.setNombres(rs.getString(3));
                us.setUser(rs.getString(4));
                lista.add(us);
            }
        } catch (Exception e) {
        }
        return lista;
    }
    public int agregar(Usuario us){
        String sql = "insert into usuario(Rut, Nombres, User)values(?,?,?)";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, us.getRut());
            ps.setString(2, us.getNombres());
            ps.setString(3, us.getUser());
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return r;
    }
    public Usuario listarId(int id){
        Usuario usu= new Usuario();
        String sql = "select * from usuario where Id=" + id;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {                
                usu.setRut(rs.getString(2));
                usu.setNombres(rs.getString(3));
                usu.setUser(rs.getString(4));
            }
        } catch (Exception e) {
        }
        return usu;
    }
    public int actualizar(Usuario us){
        String sql = "update usuario set Rut=?, Nombres=?, User=? where Id=?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, us.getRut());
            ps.setString(2, us.getNombres());
            ps.setString(3, us.getUser());
            ps.setInt(4, us.getId());
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return r;
    }
    public void delete(int id){
        String sql = "delete from usuario where Id=" + id;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
}
