package sunyang.service.back;

import java.util.List;

import sunyang.dao.operator.OperatorDAO;
import sunyang.domain.operator.Operator;
import sunyang.util.Calculate;

public class SysOperatorFacadeImpl implements SysOperatorFacade {
	private OperatorDAO operatorDAO;

	public OperatorDAO getOperatorDAO() {
		return operatorDAO;
	}

	public void setOperatorDAO(OperatorDAO operatorDAO) {
		this.operatorDAO = operatorDAO;
	}
//��������Ա��Ϣ
	public boolean newOperator(Operator operator) {

		try {
			operatorDAO.save(operator);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
//�������й���Ա��Ϣ
	public List<Operator> findOperatorInfo() {

		return operatorDAO.findAll();
	}
//ɾ������Ա��Ϣ
	public boolean removeOperator(Integer operatorId) {

		try {
			Calculate cc = new Calculate();
			Operator o = operatorDAO.findById(operatorId);
			Short s = 0;
			o.setBook(s);
			o.setBorrow(s);
			o.setQuery(s);
			o.setReader(s);
			o.setSystem(s);
			o.setPassword(cc.randomPassword(10 + (int) (Math.random() * 11)));
			operatorDAO.merge(o);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
 //����id��������Ա��Ϣ
	public Operator showAuthority(Integer operatorId) {

		return operatorDAO.findById(operatorId);
	}
//���¹���Ա��Ϣ
	public boolean updateAuthority(Operator operator) {

		try {
			Operator o = operatorDAO.findById(operator.getId());
			o.setBook(operator.getBook());
			o.setBorrow(operator.getBorrow());
			o.setQuery(operator.getQuery());
			o.setReader(operator.getReader());
			o.setSystem(operator.getSystem());
			operatorDAO.merge(o);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

}