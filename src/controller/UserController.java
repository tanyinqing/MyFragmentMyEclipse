package controller;

import model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import service.UserService;

import java.io.File;
import java.io.IOException;

/**
 * 控制器
 * 注解方式来写
 * 请求映射
 */
@Controller
@RequestMapping("user")
public class UserController extends BaseController{//高级业务类

    @Autowired
    private UserService userService;
   /* @Autowired
    @Qualifier("userDaoImpl")
    private UserDao userDao;*/
/*
    @Autowired
    private SqlSession sqlSession;*/
   private static final String AVATAR_PATH = "/avatars";

    @RequestMapping("signUp")
    private String signUp(User user) throws IOException {
//        System.out.println("user..."+user.toString());
        //运用mybatis框架把用户存储到数据库中  隐含的对应关系
//        try(SqlSession sqlSession = MyBatisSession.getSqlSession(true)) {//底层模块类
//            sqlSession.insert("mapper.UserMapper.create", user);
//        }
//        if (userDao.queryByUsername(user) != null) {

//        相对应用程序的路径
//        String avatarPath = application.getRealPath(AVATAR_PATH);
//        avatarFile.transferTo(new File(avatarPath, avatarFile.getOriginalFilename()));
//
//        user.setAvatar(avatarFile.getOriginalFilename());


        if (!userService.signUp(user)) {
            request.setAttribute("message", "username is existed.");
            return "/sign_up.jsp";
        }

//        userDao.create(user);
        return "redirect:/index.jsp";
    }


    //用户的登录
    @RequestMapping("signIn")
    private String signIn(User user) {
//        System.out.println("user..."+user.toString());
        //运用mybatis框架把用户存储到数据库中  隐含的对应关系
//        try(SqlSession sqlSession = MyBatisSession.getSqlSession(true)) {
//            运用的赋值语句
//             user = sqlSession.selectOne("mapper.UserMapper.signIn", user);
//        }


//        加密后的密码
       /* String encryptedPassword=userDao.queryByUsername(user).getPassword();
//        明文密码
        String palinPassword=user.getPassword();

//        user=userDao.query(user);
       if (DigestUtils.md5DigestAsHex(palinPassword.getBytes()).equals(encryptedPassword)) {
            session.setAttribute("user",user);
            //     return "redirect:/home.jsp";
                   return "redirect:/book/queryAll";
        }
        request.setAttribute("message", "Invalid username or password.");
        return "/index.jsp"; // forward*/
       user=userService.singIn(user);
       if (user!=null){
           session.setAttribute("user",user);
           return "redirect:/book/queryAll";
       }
        request.setAttribute("message", "Invalid username or password.");
        return "/index.jsp";
    }

    @RequestMapping("signOut")
    private String signOut() {
        session.invalidate();
        return "redirect:/index.jsp";
    }

    @RequestMapping("queryAll")
    private String queryAll() {
        //    session.setAttribute("users",userService.queryList("queryAll",null));
            session.setAttribute("users",userService.queryAll());
        return "redirect:/users.jsp";
    }

    @RequestMapping("queryAll1")
    private String queryAll1() {
        session.setAttribute("users", userService.queryAll());
        return "redirect:/users1.jsp";
    }

    @RequestMapping("queryAllUsers")
    private String queryAllUsers() {
        session.setAttribute("users", userService.queryList("queryAllUsers", null));
        return "redirect:/userAndBooks.jsp";
    }

    @RequestMapping("queryBooksByUserId/{id}")
    private String queryBooksByUserId(@PathVariable int id) {
        session.setAttribute("user", userService.queryOne("userQueryBooksByUserId", id));
//        System.out.println(userService.queryOne("userQueryBooksByUserId", id).toString());
        return "redirect:/userBooks.jsp";
    }

    @RequestMapping("toCreateAddress")
    private String toCreateAddress() {
        session.setAttribute("users", userService.queryAll());
        return "redirect:/createAddress.jsp";
    }

    @RequestMapping("userAddress/{id}")
    private String userAddress(@PathVariable int id) {
        session.setAttribute("user", userService.queryOne("userAddress", id));
        return "redirect:/userAddress.jsp";
    }
}
