package dao;

import interfaces.AuditoriaDAO;
import interfaces.BoletaDAO;
import interfaces.ClienteDAO;
import interfaces.ComboDAO;
import interfaces.EmpleadoDAO;
import interfaces.ProductoDAO;

public class MySqlDAOFactory extends DAOFactory {

	@Override
	public ProductoDAO getProduto() {
		// TODO Auto-generated method stub
		return new MySqlProductoDAO();
	}

	@Override
	public EmpleadoDAO getEmpleado() {
		// TODO Auto-generated method stub
		return new MySqlEmpleadoDAO();
	}

	@Override
	public ComboDAO getCombo() {
		// TODO Auto-generated method stub
		return new MySqlComboDAO();
	}

	@Override
	public ClienteDAO getCliente() {
		// TODO Auto-generated method stub
		return new MySqlClienteDAO();
	}

	@Override
	public BoletaDAO getBoleta() {
		// TODO Auto-generated method stub
		return new MySqlBoletaDAO();
	}

	@Override
	public AuditoriaDAO getAuditoria() {
		// TODO Auto-generated method stub
		return new MySqlAuditoriaDAO();
	}
	

}
