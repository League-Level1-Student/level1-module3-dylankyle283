package _02_backpack;

public class BackpackRunner {
	public static void main(String[] args) {
		Backpack backpack = new Backpack();
	Pencil pencil = new Pencil();
	Ruler ruler = new Ruler();
	Textbook text = new Textbook();
		backpack.putInBackpack(pencil);
	backpack.putInBackpack(ruler);
	backpack.putInBackpack(text);
	backpack.packAndCheck();

	}
}
