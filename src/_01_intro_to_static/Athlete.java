package _01_intro_to_static;

public class Athlete {
	 static int nextBibNumber;
	    static String raceLocation = "New York";
	    static String raceStartTime = "9.00am";

	    String name;
	    int speed;
	    int bibNumber;

	    Athlete (String name, int speed, int bibNumber){
	        this.name = name;
	        this.speed = speed;
	    }

	    public static void main(String[] args) {
	        //create two athletes
	        //print their names, bibNumbers, and the location of their race. 
	    Athlete ath1 = new Athlete("bob", 10, 1);
	    Athlete ath2 = new Athlete("bill", 11, 2);
	    System.out.println(1);
	    System.out.println(ath1.name);
	    		System.out.println(Athlete.raceLocation);
	    		  System.out.println(2);
	    		    System.out.println(ath2.name);
	    		    		System.out.println(Athlete.raceLocation);
	    
	    
	    
	    }
	

}
