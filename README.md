# wrtbwmon

I wanted to adapt the bwmon code for DD-WRT routers so that I could easily run
it on the router without having to modify the OS image (which is a bit of a
hassle). This requires making sure that the software downloads itself from the
internet at every reboot (as it is saved to /tmp).

Additionally, I wanted the bandwidth logs to be copied over to a remote server
every now and again for my convenience.
