package Features;

import com.intuit.karate.junit5.Karate;

class TestRunner {
    
    //@Karate.Test
    Karate testUsers()
    {
        return Karate.run("GetRequest").relativeTo(getClass());
    }


    @Karate.Test
    Karate testUsersWithClassPath()
    {
        return Karate.run("classpath:src/test/java/Features/GetRequest.feature");
    }

}
