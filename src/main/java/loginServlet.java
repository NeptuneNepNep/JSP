import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //接受客户端传递参数
        String uname = req.getParameter("uname");
        String password = req.getParameter("password");
        System.out.println(uname+password);
        if(uname.equals("admin")||(password.equals("password"))) {
            System.out.println("账号或密码错误");
            req.getRequestDispatcher("login.jsp").forward(req,resp);

        }
        else {
            System.out.println("欢迎");
            //跳转登陆页面
            req.getRequestDispatcher("Hello.jsp").forward(req,resp);

        }
    }
}
