# INDEX

- [Shell Basics](#shell-basics)
  - [Introduction](#introduction)
  - [Commands](#commands)
    - [cd](#cd)
    - [touch](#touch)
    - [echo](#echo)
    - [dirname](#dirname)
    - [command substitution (`$`)](#command-substitution)
    - [chmod](#chmod)
    - [comment operator (`<<`)](#operator-for-comments)
  - [File Names](#file-names)
  - [Package Management](#package-management)

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
<br>

### touch

Syntax: `touch <filename>`
 
Navigate to the folder where the file is to be created or open a terminal within that folder. Run a command in the format shown above.

For example:
```
root@ubuntu:~$ touch test.txt
root@ubuntu:~$
```

### echo

Syntax: `echo <string>`  
Used to display `<string>` on the command-line. It is a built-in command used in shell scripts and batch files to output status text to the screen or a file.

### dirname

Syntax: `dirname <file-path>`  

This command prints the directory containing the supplied path.
If we supply a file/directory, `dirname` outputs the path containing that file/directory. 

For example:
```
root@ubuntu:~$ dirname /home/example/foo
/home/example
root@ubuntu:~$
```

### readlink

Used to obtain the full path of a file. `readlink` prints the absolute path of a symbolic link (a type of file in Linux that points to another file or a folder on your computer. Symlinks are similar to shortcuts in Windows.) or the absolute path for a supplied relative path.  
NOTE: It is vital that our current directory is a parent directory or higher of the file in question.

Syntax: `readlink [<flag>] <relative-path/file-name>`

#### **flags**

If the conditions specified by these flags aren't met, an output isn't returned.
- `-f` : All but the last component (which is the file itself) in the supplied path must exist. If the path does not exist.
- `-e` : All components in the supplied path must exist.
- `-m` : None of the components in the supplied path are required to exist.

For example, obtaining absolute path using the relative path:
```
root@ubuntu:~/home/example$ readlink -f foo/foo.txt
home/example/foo/foo.txt
root@ubuntu:~/home/example$
```

### command substitution

Syntax: `$(command)`  
where `command` is executed in a sub-shell, and the output from `command` replaces its call.<br><br>
Command substitution can be used in combination with `dirname` to obtain the name of the directory which contains a specific file, without knowing even the relative path of that file.
```
root@ubuntu:~$ dirname $(readlink -f file.txt)
/home/example/foo
root@ubuntu:~$
```

### chmod

`chmod` allows control of read, edit and run permission for files and directories. `chmod` stands for change 
mode.   

- Classes of users:  
  - user `u` : the person who created the file  
  - group `g`: people in a selected group  
  - other `o`: everyone else on the system  

- Classes of permissions:  
  - read `r`   : ability to see the contents of the file  
  - write `w`  : ability to change the contents of the file  
  - execute `x`: ability to execute the contents of the file  

- Operators for changing permissions:
  - plus `+` : the permission is added.
  - hyphen  `-` : the permission is disabled.
  - equal-to `=` : the permission is explicitly assigned. All other settings for that category (owner, group, or others) are reset. For example, `g=r` removes all permission from the group except read, and explicitly set read if not set already.

Syntax: `chmod u+x <file-name>`  
This command is used to give the shell script `<file-name>` executable permissions. 

### `<<` operator for comments
Syntax:
```
<<comment-name
//Comment body

comment-name
```
where `comment-name` can be replaced by any string.

## File Names

- File names that begin with a period character are hidden. This means that `ls` will not list them unless we say `ls -a`, where `-a` means display all.
- File names in Linux, like Unix, are case sensitive.

## Package Management

**Debian** has a robust packaging system and every component and application is built into a package that is installed on your system. Debian uses a set of tools called **Advanced Packaging Tool** _(APT, not to be confused with the command `apt`)_ to manage this packaging system.

There are various tools that interact with APT and allow us to install, remove and manage packages in Debian based Linux distributions. `apt-get` is one such command-line tool which is widely popular.
However there is a problem of redundancy when it comes to `apt-get** commands, as there are a numbe`of similar commands in the `apt-cache` tool.

Also, these commands are way too low level and they have so many functionalities which are perhaps never used by an average Linux user.
On the other hand, the most commonly used package management commands are scattered across `apt-get` and `apt-cache`.

The `apt` tool was introduced to solve this problem. `apt` consists some of the most widely used features from `apt-get` and `apt-cache` leaving aside obscure and seldom used features.

### Functions of **apt** tool

- Maintains a package list, meaning it fetches a list of all the available software that can be installed on the platform. 
- `sudo apt update`: Updates the package list
- `sudo apt upgrade`: Upgrades the previously installed software to newer versions
- `sudo apt install <package-name>`: Used to install new software packages
- `sudo apt remove <package-name>`: Removes pieces of software WITHOUT breaking the system

