# Shell Basics

## Introduction

- Operating as a regular user.
```
rohan@ubuntu:~$ 
```
- Operating as a superuser.
```
rohan@ubuntu:~#
```
Superuser has administrative privileges. This is dangerous, since superuser can delete/overwrite any file on the system. Operate as superuser ONLY when administrative 
privileges are needed.
- Basic commands:
  - `pwd`: print working directory
  - `cd`: change directory
  - `ls`: list files and directories
- Unix-like operating systems and Windows have hierarchial directory structure (tree-like pattern of directories, called folders in other systems). 
- However, Windows has different drive letters for different storage devices and partitions, whereas Linux has only one file tree, and different devices can be on different branches of that tree.
- Linux has a root directory `‘/’` and all files and folders are contained inside it.
- The working directory on startup is `‘/home/_username_’`, but it can be anything set by the system administrator.

## Commands

### cd

Syntax: `cd <path name>`  
`<path name>` can be **absolute** or **relative** to the current working directory.

- **Absolute Pathname** starts with the root directory and follows the tree branch by branch until the path to the desired directory or file is completed. Example:  
  `/usr/bin` means
  - `/`: root directory
  - `user`: subdirectory of root
  - `bin`: subdirectory of `user`
- **Relative Pathname** starts from the working directory. Special notations:
  - `.` refers to the working directory itself. Example:
  ```
  /home/rohan> cd ./downloads
  /home/rohan/downloads>
  ```
  - `..` refers to the parent directory of the working directory. Example:
  ```
  /usr/bin> cd ..
  /usr>
  ```
  In both the above cases, we can make this change using absolute pathnames as well.

#### **Shortcuts**

- `cd`: changes working directory to home directory
- `cd -`: changes working directory to the previous one
- `cd ~userName`: changes working directory to the home directory of the specified user

## File Names

- File names that begin with a period character are hidden. This means that `ls` will not list them unless we say `ls -a`, where `-a` means display all.
- File names in Linux, like Unix, are case sensitive.

## Package Management

**Debian** has a robust packaging system and every component and application is built into a package that is installed on your system. Debian uses a set of tools called **Advanced Packaging Tool** _(APT, not to be confused with the command **apt**)_ to manage this packaging system.

There are various tools that interact with APT and allow us to install, remove and manage packages in Debian based Linux distributions. **apt-get** is one such command-line tool which is widely popular.
However there is a problem of redundancy when it comes to **apt-get** commands, as there are a number of similar commands in the **apt-cache** tool.

Also, these commands are way too low level and they have so many functionalities which are perhaps never used by an average Linux user.
On the other hand, the most commonly used package management commands are scattered across **apt-get** and **apt-cache**.

The **apt** tool was introduced to solve this problem. **apt** consists some of the most widely used features from **apt-get** and **apt-cache** leaving aside obscure and seldom used features.

### Functions of **apt** tool

- Maintains a package list, meaning it fetches a list of all the available software that can be installed on the platform. This package list is updated using `sudo apt update`
