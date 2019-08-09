package _05_netflix;

public class netflix {
public static void main(String[] args) {
	Movie star = new Movie("Star Wars", 5);
	Movie sonic = new Movie("Sonic Movie", 2454);
	Movie egg = new Movie("Eggame", 587);
	Movie future = new Movie("Back to the future", 5);
	Movie poco = new Movie("poco", 0);
poco.getTicketPrice();
future.getTicketPrice();
	egg.getTicketPrice();
sonic.getTicketPrice();
star.getTicketPrice();

NetflixQueue queue = new NetflixQueue();
queue.addMovie(poco);
queue.addMovie(future);
queue.addMovie(egg);
queue.addMovie(sonic);
queue.addMovie(star);
queue.printMovies();
System.out.println("the best movie is " + queue.getBestMovie().toString());
System.out.println("the second best movie is " + queue.getSecondBestMovie().toString());
}
}

