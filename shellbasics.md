# Shell Basics

## Introduction

- If the last character of your shell prompt is **'#'** rather than **'$'**, you are operating as the **superuser**. This means that you have administrative privileges. This can be dangerous, since you are able to delete or overwrite any file on the system. Unless you absolutely need administrative privileges, DO NOT operate as the superuser.
- **pwd** (print working directory), **cd** (change directory), and **ls** (list files and directories).
- Unix-like operating systems and Windows both have hierarchial directory structure (they organized in a tree-like pattern of directories, called folders in other systems).
- the only difference being that Windows has different drive letters for different storage devices and partitions, whereas linux has only one file tree, and different devices can be on different branches of that tree.
- Linux has a root directory **‘/’** and all files and folders are contained inside it.
- The working directory on startup is **‘/home/*username*`'**, but it can be anything set by the system administrator.
<br><br>

## ‘cd’ Command

When using ‘cd’ command to change the ‘working directory’, we can type :

cd pathName  < - - -  this path can be **absolute** or **relative** to the current working directory.

- **Absolute Pathname** starts with the root directory and follows the tree branch by branch until the path to the desired directory or file is completed. For example, <p align = "center"><code>`/usr/bin`</code></p>
  This means from the root directory (represented by the leading slash in the pathname), there is a directory called “user” which contains a directory called “bin”.
- **Relative Pathname** starts from the working directory. There are couple of special notations associated with relative pathnames. These special notations are ‘.’ (dot) and ‘..’ (dot-dot).<br><br>The **‘.’** notations refers to the working directory itself. For instance, when working directory is
  **"/home/rohan"**, <p align = "center"><code>`cd ./downloads`</code></p> will change the working directory to **“/home/rohan/downloads”**.
  <br><br>
  The **‘..’** notation refers to the parent directory of the working directory.  Suppose our working directory is **"usr/bin"**, and we want to go to its parent directory, **“/usr”**.
  We can use the command <p align = "center"><code>`cd ..`</code></p> In both the above cases, we can make this change using absolute pathnames as well.

### **Shortcuts in cd**

- If we type ‘cd’ followed by nothing, ‘working directory’ will be changed to our home directory.
- ‘cd -’ changes the ‘working directory’ to the previous one.
- cd ~userName will change the ‘working directory’ to the home directory of the specified user.
<br><br>

## File Names

- File names that begin with a period character are hidden. This means that ‘ls’ will not list them unless we say ‘ls -a’, where -a means display all.
- File names in Linux, like Unix, are case sensitive.<br><br>

## Package Management


**Debian** has a robust packaging system and every component and application is built into a package that is installed on your system. Debian uses a set of tools called **Advanced Packaging Tool** *(APT, not to be confused with the command **apt**)* to manage this packaging system.<br><br>

There are various tools that interact with APT and allow us to install, remove and manage packages in Debian based Linux distributions. **apt-get** is one such command-line tool which is widely popular.
However there is a problem of redundancy when it comes to **apt-get** commands, as there are a number of similar commands in the **apt-cache** tool.<br><br> 

Also, these commands are way too low level and they have so many functionalities which are perhaps never used by an average Linux user. 
On the other hand, the most commonly used package management commands are scattered across apt-get and **apt-cache**.

The **apt** tool was introduced to solve this problem. **apt** consists some of the most widely used features from **apt-get** and **apt-cache** leaving aside obscure and seldom used features.

### Functions of **apt** tool

- Maintains a package list, meaning it fetches a list of all the available software that can be installed on the platform. This package list is updated using the following command. <p align = "center"><code>sudo apt update</code></p>