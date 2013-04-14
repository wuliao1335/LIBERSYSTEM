package sunyang.service.back;

import java.util.List;

import sunyang.domain.operator.Operator;

public interface SysOperatorFacade {
	public List<Operator> findOperatorInfo();

	public boolean removeOperator(Integer operatorId);

	public Operator showAuthority(Integer operatorId);

	public boolean updateAuthority(Operator operator);

	public boolean newOperator(Operator operator);
}
