import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring.xml","classpath:spring-mybatis.xml"})
public class SpringTest {
//    @Resource
//    private StudentServiceImpl studentService;
//    @Resource
//    private GoodsServiceImpl goodsService;
//
//    @Resource
//    private IStudentDaoMapper studentDaoMapper;

    @Test
    public void testSpring() {
        //List<Student> list = studentService.queryAll();
        //List<Student> list = studentDaoMapper.findAll();
//        List<Goods> goods = goodsService.queryGoods();
//        System.out.println("Goods" + goods);
    }


}
