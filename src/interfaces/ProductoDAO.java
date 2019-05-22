package interfaces;

import java.util.List;

import beans.ProductoDTO;

public interface ProductoDAO {
public ProductoDTO buscarProducto(int cod);
public List<ProductoDTO> buscarProducto(String des);
public List<ProductoDTO> listarProducto();
public int registrarProducto(ProductoDTO obj);
public int actualizarProducto(ProductoDTO obj);
public int eliminarProducto(int cod);
}
