#!/bin/bash

<<Comment
# What Can I Do With SSH?

With SSH, there is so much you can do. I can issue commands to the server using the Shell Scripting Language. The most common interpreter is bash, but I could use others
like csh and zsh. I can do everything from installing and removing applications to checking configurations and seeing what processes are active. What's cool about linux
is that a linux system can be controlled entirely from the command line via SSH.

# SSH Connection Requirements

To connect with SSH to a remote server, we simply need the terminal of a Linux distribution. 
You can connect to a remote server using a password or key.

Now, to connect to the server with SSH, we need the following information:
    - Server IP address
    - User name 
    - Port (Usually 22)
    - Password or key.


# SSH With Password

The easiest way to connect via SSH with the terminal is with a password. It's basically like connect with a username and password. 
    - The syntax for doing this is as follows: ssh username@hostname -p portnumber
    - With real information, it would look something like this: ssh TGK@999.999.9.999 -p 22 (Fake for obvious reasons)
    - If the server that I wanna connet to uses port 22, you don't have to write "-p 22" since it is the default port. 

After connecting, the terminal asks us if we are sure that we want to connect to the server. This message shows if it is our first time using the server. 
    - If we see this when we have connected to the server before, then it could mean that the server has been configured with a new key, or that someone is forging the 
        identity of my server.
    - I've gotta evaluate on a case by case basis, but I should proceed with caution regardless.  

After entering your password, you should be connected to the remote server.
    - We should be able to see the name of the server, and no longer see the name of our computer. 


# SSH With Key

Connecting using keys is a much more secure method of connecting to a server. Many believe this should be the standard method of connecting to a remote server.
With this system we have two keys, one public and one private, which are used to create an asymmetric encryption system. Using this encryption, messages are 
encrypted and decrypted using different keys. 
    - Private keys are secret and typically maintained solely by the owner. These also have a password. They are used to prove one's identity. 
    - Public keys are public, and they are distributed to all servers with which you want to communicate securely. 

Some things to note:
    - You cannot derive the private key from the public key. 
    - Data encrypted with the public key can be decrypted ONLY by the private key, and vice versa. 

# Creating a pair of keys on Linux


Comment

