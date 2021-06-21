package exception.resolver;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

import exception.CustomException;

public class CustomExceptionResolver implements HandlerExceptionResolver {

	@Override
	public ModelAndView resolveException(HttpServletRequest request, HttpServletResponse response, Object handler,
			Exception ex) {
		CustomException customException=null;
		if(ex instanceof CustomException) {
			customException=(CustomException) ex;
		}else {
			customException=new CustomException("未知错误");
		}
		ModelAndView mv=new ModelAndView();
		mv.setViewName("error");
		mv.addObject("error", customException);
		return mv;
	}

}
