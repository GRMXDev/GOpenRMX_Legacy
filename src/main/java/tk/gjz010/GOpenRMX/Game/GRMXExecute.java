package tk.gjz010.GOpenRMX.Game;

import org.jruby.embed.ScriptingContainer;

//import javax.xml.soap.*;
public class GRMXExecute {

	/**
	 * @param args
	 */
	private ScriptManager man_script;
	private ResourceManager man_res;
	private DataManager man_data;
	private static GRMXExecute game;
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("GOpenRMX Execute 解释器");
		game=new GRMXExecute();
		try{
			game.initManagers();
		}
		catch (Exception e){
			
		}
	    String jrubyCode="";  
	    ScriptingContainer container = new ScriptingContainer();  
	    container.runScriptlet(jrubyCode);  
	}
	public void initManagers() throws Exception{
		man_script=new ScriptManager(this);
	}

}
