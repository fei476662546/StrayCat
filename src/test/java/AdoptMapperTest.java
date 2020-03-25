import com.entity.Pet;
import com.mapper.AdoptMapper;
import org.junit.Test;
import org.junit.runner.RunWith;

import static org.junit.Assert.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;
/**
 * Create by mysteriousTime
 * time on 2019/8/28  19:25
 */
@RunWith(SpringRunner.class)
@ContextConfiguration({"classpath:/applicationContext-dao.xml",
        "classpath:/applicationContext-service.xml",
        "classpath:/applicationContext-tx.xml"})
public class AdoptMapperTest {

    @Autowired
    private AdoptMapper mapper;


    @Test
    public void updatePetState() {
        Pet pet=new Pet();
        pet.setPetName("大黑");
        pet.setState(7);

        System.out.println(mapper.updatePetState(pet));
    }

}