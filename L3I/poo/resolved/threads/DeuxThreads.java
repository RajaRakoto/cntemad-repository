public class DeuxThreads {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		//instantiation des 2 threads
		Thread1 thread1 = new Thread1();
		Thread2 thread2 = new Thread2();
		
		//start 2 threads
		thread1.start();
		thread2.start();

	}
}

