import org.junit.Test;

/**
 * Create by mysteriousTime
 * time on 2019/9/11  10:32
 */
public class test {

 static int test;
static boolean final_1()
           {
test++;
 return true;
 }

 public static void main(String[] args)
 {
 test=0;
 if ((final_1() | final_1()) || final_1())
 test++;
 System.out.println(test);
}
}


