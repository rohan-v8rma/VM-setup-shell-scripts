#!/bin/bash

function Help() {
    #########################################
    #Help Function
    #########################################
    
    echo "Hey! Welcome to Rohan's script for installing applications easily on linux."
    echo "Whatever flag you add will help in specifying what application you want to install."
    echo 
    echo "Syntax for running the script : bash rohan-script flag(s)"
    echo
    echo "Note that the script should be run with one or more flags."
    echo 
    echo "Standard Softwares:"
    echo
    echo "--baobab               A disk analyzer tool with a graphical interface." 
    echo "--codeprocessors       A set of standard compilers and interpreters."
    echo "--cpufreq              A software for managing CPU powersaving."
    echo "--discord              Discord : A VoIP, instant messaging and digital distribution platform for gamers."
    echo "--docker               A script for installing Docker engine, Docker CLI and Docker Desktop."
    echo "--dropbox              A script for integrating Dropbox with the Nautilus file manager; as well as downloading dropboxignore."
    echo "--edge                 Microsoft Edge : The default browser in Windows 11."
    echo "--gnometweaks          A software for customizing the GNOME desktop environment."
    echo "--lxde                 LXDE : A lightweight desktop environment for Linux."
    echo "--onlyoffice           Onlyoffice : The best editor for editing Microsoft Office files in Linux."
    echo "--spotify              "
    echo "--terminator           A terminal emulator that supports multiple resizable terminal panels."
    echo "--tlauncher            A cracked Minecraft launcher."
    echo "--todoist              The desktop client for a productivity app."
    echo "--vscode               VS Code : A code editor by Microsoft."
    echo "--ytdl                 Youtube-dl: A command line utility for downloading YouTube videos."
    echo "--allapps              Install all the apps."
    echo 
    echo "Complex Instructions:"
    echo 
    echo "--dockmodify           A script for changing the dock position to the bottom in GNOME."
    echo "--linwintime           A script for resolving the time discrepancy in a dual boot of Windows and Linux."
    echo "--swapinc              A script for changing the size of the swap size to 8 GB. If you have more RAM in your system, increase the parameter in the script to be equivalent to your RAM size."
    echo "--allinstruct          Execute all instructions." 
    echo    
    echo "--help                 This help text."
    echo 

}

Help

for flag in "$@"; do

    case ${flag} in 
    # Here, we had to use command substitution to get the value of the variable in the for loop
        --help)
            Help
            ;;
        *)
            echo "'${flag}' is an invalid flag. Please try again."
            echo "Type 'bash rohan-script.sh --help' for all flag options."
            ;;

        #Standard Softwares
        --baobab)
            ./baobab-disk-analyzer.sh
            ;;
        --codeprocessors)
            ./compilers-and-interpreters.sh
            ;;
        --cpufreq)
            ./cpufreq-power-manager.sh
            ;;
        --discord)
            ./discord.sh
            ;; 
        --docker)
            ./docker.sh
            ;;
        --dropbox)
            ./dropbox.sh
            ;;
        --edge)
            ./microsoft-edge.sh
            ;;
        --figma)
            ./figma.sh
            ;;
        --gnometweaks)
            ./gnome-tweaks.sh
            ;;
        --lxde)
            ./lxde-install.sh
            ;;
        --onlyoffice)
            ./onlyoffice.sh
            ;;
        --spotify)
            ./spotify.sh
            ;;    
        --terminator)
            ./terminator.sh
            ;;
        --tlauncher)
            ./tlauncher.sh
            ;;    
        --todoist)
            ./todoist.sh
            ;;
        --vscode)
            ./vs-code.sh
            ;;
        --ytdl)
            ./youtube-dl.sh
            ;;
        --allapps)
            ./baobab-disk-analyzer.sh
            ./compilers-and-interpreters.sh
            ./cpufreq-power-manager.sh
            ./discord.sh 
            ./docker.sh
            ./dropbox.sh
            ./figma.sh
            ./gnome-tweaks.sh
            ./lxde-install.sh
            ./microsoft-edge.sh
            ./onlyoffice.sh
            ./spotify.sh
            ./terminator.sh
            ./tlauncher.sh
            ./todoist.sh
            ./vs-code.sh
            ./youtube-dl.sh
            ;;

        # Complex Instructions
        
        --dockmodify)
            ./dock-modification.sh
            ;;
        --linwintime)
            ./linux-windows-time-diff.sh
            ;;
        --swapinc)
            ./swap-size-increase.sh
            ;;
        --allinstruct)
            ./dock-modification.sh
            ./linux-windows-time-diff.sh
            ;;
    esac
done

