package sunyang.dao.barcode;

import java.util.List;

import sunyang.domain.barcode.Barcode;

public interface BarcodeDAO {

	public void save(Barcode transientInstance);

	public void delete(Barcode persistentInstance);

	public Barcode findById(java.lang.Integer id);

	public List<Barcode> findByProperty(String propertyName, Object value);

	public List<Barcode> findAll();

	public List<Barcode> findAllPage(Integer first, Integer max);

}