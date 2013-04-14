/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package tk.gjz010.GOpenRMX.Exec;
import java.io.*;
import org.newdawn.slick.*;
/**
 *
 * @author Administrator
 */
public class ResourceManager {
  ResourceManager(GameContainer gc){
      
  }
  public static InputStream getGameResource(String filename){
    return RMXGame.class.getResourceAsStream(filename);
  }
}
