/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package tk.gjz010.GOpenRMX.Exec;
import org.newdawn.slick.*;
/**
 *
 * @author Administrator
 */
public class RMXGame extends BasicGame{
  private ResourceManager man_sound,man_view;
  public RMXGame()
  {
     super("Hello World");
  }
 
  @Override
  public void init(GameContainer gc) throws SlickException
  {
    //man_sound=AudioManager.new();
  }
 
  @Override
  public void update(GameContainer gc, int delta) throws SlickException
  {
 
  }
 
  @Override
  public void render(GameContainer gc, Graphics g) throws SlickException
  {
     g.drawString("Hello World", 100, 100);
  }
 
}
