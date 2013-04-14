package sunyang.dao.operator;

import java.util.List;

import sunyang.domain.operator.Operator;

public interface OperatorDAO {

	public void save(Operator transientInstance);

	public Operator findById(java.lang.Integer id);

	public List<Operator> findByProperty(String propertyName, Object value);

	public List<Operator> findAll();

	public Operator merge(Operator detachedInstance);

}