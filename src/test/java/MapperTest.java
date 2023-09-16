import com.dwl.crud.mapper.DepartmentMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.test.context.ContextConfiguration;

@ContextConfiguration(locations = "classpath:applicationContext.xml")
public class MapperTest {

    @Test
    public void testCRUD(){
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        DepartmentMapper bean = context.getBean(DepartmentMapper.class);
//        bean.selectByExample();
    }
}
