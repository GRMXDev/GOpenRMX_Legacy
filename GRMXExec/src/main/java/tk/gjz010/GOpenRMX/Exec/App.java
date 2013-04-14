package tk.gjz010.GOpenRMX.Exec;

import org.newdawn.slick.*;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args ) throws SlickException
    {
     AppGameContainer app = new AppGameContainer(new RMXGame());
     app.setDisplayMode(800, 600, false);
     app.start();
    }
}
