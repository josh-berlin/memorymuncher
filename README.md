Memory Muncher
=============

iOS app that will eat memory and cause backgrounded apps to be terminated by the OS.

This is useful for testing backgrounding modes when your application has been killed due to memory pressure. One example would be testing to see if your terminated CoreBluetooth peripheral application is properly waking up when receiving a write request from a CoreBluetooth central.

Steps for testing backgrounding:  
1. Connect your iOS device to your Mac.  
2. Open Instruments and run the Activity Monitor. This will show you your currently running applications. 
3. Open your application.  
4. Go back to the home screen and open Memory Muncher.  
5. After about 5 seconds, you should see your app killed in the Activity Monitor.  
6. Wake your app up!  
