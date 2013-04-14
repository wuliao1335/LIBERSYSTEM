package sunyang.service.back;

import sunyang.domain.operator.Operator;

public interface OperatorUtilFacade {
	public Operator operatorLogin(Operator operator);

	public boolean editPassword(Operator operator);


}
