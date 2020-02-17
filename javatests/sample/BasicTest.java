
package sample;

import org.junit.Test;
import static org.junit.Assert.assertEquals;


public final class BasicTest {
    @Test
    public final void testBasic() {
        assertEquals("test method should produce test value",
            "Hello, World!",
            new Sample().test());
    }
}

