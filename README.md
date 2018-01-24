# tensorflow_gpu
A script to install tensorflow with gpu.

Prerequisites:-
Make sure you have installed all of the below:-
           
     ->  Nvidia Current Drivers  (Try to install stable version instead of latest.)

              => You can verify your installation by typing the following in terminal
                         $ sudo nvidia-smi
                         This should have outputed a table which specifies your version.
              => If you don't have Nvidia drivers. You can install it using the below commands
                         $ sudo apt-get purge nvidia*    
                         The above line will remove all previous installed drivers (brokens drivers too)
                         $ sudo add-apt-repository ppa:graphics-drivers
                         $ sudo apt-get update
                         $ sudo apt-get install nvidia-current
                         $ reboot
                         Now execute the below command & check if it outputs the drivers
                         $ nvidia-smi
                         $ sudo apt-mark hold nvidia-current
                         The above comman will prevent future updates, therefore your driver will be stable

												 
     ->  python3
   
     ->  pip
	   => If you don't have pip install using the below commands

		        $ sudo apt-get install python3-pip
		
If you have all the above, then we are good to go.

Installing the Script:-
		->Download the install.sh script from this repo
		
		-> move it to home directory & run it, using the below command
			$ sudo ./install.sh

		if you have not accessable error, then type the below command
			$ sudo chmod 777 install.sh

 		Verify:-
		
                -> To check if everything has installed perfectly, type the below command
			$ sudo nvcc --version
		You will get a nice message of the version which is installed.
				

 If you have any error Commend below. I will try to respond.
