# ~/.bashrc: executed by bash(1) for non-login shells.
# CSL default
# by kkowal 2005-06-21 and updated by various other people
# apence, 20120909: this is a very Sun centric set of options

# DO NOT MAKE CHANGES TO THIS FILE.  Put your changes in your .mybashrc
# file instead.

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

#
# `PS1' is run each time the bash prompt is drawn.  The following
# line noise draws a colorful prompt with your user name, which
# computer you're logged into, and what directory you're in.
#
#PS1="\@ \h \w\\$ " # non-colored
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] \$ '

#
# `PATH' determines the locations, in order, in which the shell will look for
# executable programs.
#
#PATH=/bin:/usr/bin:/usr/sbin
PATH=/bin:/usr/bin
# IF it exists, Look in my home bin first, then the other path
[ -d ~/bin ] && PATH=~/bin:$PATH
# IF it exists, look here after the normal path
[ -d /usr/local/bin ] && PATH=$PATH:/usr/local/bin
[ -d /usr/share/bin ] && PATH=$PATH:/usr/share/bin

# blastwave.org
[ -d /opt/csw/bin ] && PATH=$PATH:/opt/csw/bin

# sunfreeware.org
[ -d /usr/sfw/bin ] && PATH=$PATH:/usr/sfw/bin

# sun.com
[ -d /opt/SUNWspro/bin ] && PATH=$PATH:/opt/SUNWspro/bin


# blastwave.org
[ -d /opt/csw/bin ] && PATH=$PATH:/opt/csw/bin

# sunfreeware.org
[ -d /usr/sfw/bin ] && PATH=$PATH:/usr/sfw/bin

# sun.com
[ -d /opt/SUNWspro/bin ] && PATH=$PATH:/opt/SUNWspro/bin

# GNU compilers
[ -d /opt/gnu/bin ] && PATH=$PATH:/opt/gnu/bin
#[ -d /opt/gcc-4.0.1/bin ] && PATH=$PATH:/opt/gcc-4.0.1/bin
#[ -d /opt/gcc-3.1.1/bin ] && PATH=$PATH:/opt/gcc-3.1.1/bin
#[ -d /opt/gcc-3.4.1/bin ] && PATH=$PATH:/opt/gcc-3.4.1/bin

# Sun build tools
[ -d /usr/ccs/bin ] && PATH=$PATH:/usr/ccs/bin

# Perl
#[ -d /usr/perl5/bin ] && PATH=$PATH:/usr/perl5/bin
#[ -d /opt/csw/perl/bin ] && PATH=$PATH:/opt/csw/perl/bin

# Apache
[ -d /usr/apache2/bin ] && PATH=$PATH:/usr/apache2/bin
[ -d /usr/apache/bin ] && PATH=$PATH:/usr/apache/bin
#[ -d /usr/apache/tomcat/bin ] && PATH=$PATH:/usr/apache/tomcat/bin

#[ -d /usr/xpg4/bin ] && PATH=$PATH:/usr/xpg4/bin # "X/Open Portability Guide" conformant system commands
[ -d /usr/openwin/bin ] && PATH=$PATH:/usr/openwin/bin # Window manager tools (Solaris)
[ -d /usr/dt/bin ] && PATH=$PATH:/usr/dt/bin # Common Desktop Environment (Solaris)
[ -d /usr/kerberos/bin ] && PATH=$PATH:/usr/kerberos/bin # Kerberos utilities (Linux)

### NO don't add PATH=$PATH:.
# the better option is to type ./command when the command is in cwd
# if you want to make a habbit of running other commands out of your path
# append them to your path in your .mybashrc
# YOU need to know what you are going to run

export PATH

#
# `MANPATH' determines the locations, in order, where `man' will look
# for manual pages.
#
MANPATH=/usr/share/man
[ -d ~/man ] && MANPATH=~/man:$MANPATH

# blastwave.org
[ -d /opt/csw/man ] && MANPATH=$MANPATH:/opt/csw/man
[ -d /opt/csw/share/man ] && MANPATH=$MANPATH:/opt/csw/share/man
[ -d /opt/csw/ssl/man ] && MANPATH=$MANPATH:/opt/csw/ssl/man

# sunfreeware.org
[ -d /opt/sfw/man ] && MANPATH=$MANPATH:/opt/sfw/man
[ -d /opt/sfw/cups/man ] && MANPATH=$MANPATH:/opt/sfw/cups/man
[ -d /opt/sfw/esp/man ] && MANPATH=$MANPATH:/opt/sfw/esp/man

# sun.com
[ -d /opt/SUNWspro/man ] && MANPATH=$MANPATH:/opt/SUNWspro/man

# GNU Compilers
[ -d /opt/gcc-4.0.1/man ] && MANPATH=$MANPATH:/opt/gcc-4.0.1/man
[ -d /opt/gcc-3.4.1/man ] && MANPATH=$MANPATH:/opt/gcc-3.4.1/man
[ -d /opt/gcc-3.1.1/man ] && MANPATH=$MANPATH:/opt/gcc-3.1.1/man

# GNU Utilities
[ -d /opt/gnu/man ] && MANPATH=$MANPATH:/opt/gnu/man

# Java
[ -d /usr/j2se/man ] && MANPATH=$MANPATH:/usr/j2se/man
[ -d /usr/jdk/instances/jdk1.5.0/man ] && MANPATH=$MANPATH:/usr/jdk/instances/jdk1.5.0/man
[ -d /usr/java/jdk1.5.0_04/man ] && MANPATH=$MANPATH:/usr/java/jdk1.5.0_04/man

# Perl
[ -d /usr/perl5/man ] && MANPATH=$MANPATH:/usr/perl5/man
#[ -d /usr/perl5/5.6.1/man ] && MANPATH=$MANPATH:/usr/perl5/5.6.1/man
#[ -d /usr/perl5/5.8.3/man ] && MANPATH=$MANPATH:/usr/perl5/5.8.3/man
#[ -d /usr/perl5/5.8.4/man ] && MANPATH=$MANPATH:/usr/perl5/5.8.4/man

# ML
[ -d /usr/local/sml/bin ] && PATH=$PATH:/usr/local/sml/bin

# Apache
[ -d /usr/apache/man ] && MANPATH=$MANPATH:/usr/apache/man
[ -d /usr/apache2/man ] && MANPATH=$MANPATH:/usr/apache2/man

[ -d /usr/dt/share/man ] && MANPATH=$MANPATH:/usr/dt/share/man # Common Desktop Environment (Solaris)
[ -d /usr/X11R6/man ] && MANPATH=$MANPATH:/usr/X11R6/man # X11 Window Manager (Linux)
[ -d /usr/openwin/share/man ] && MANPATH=$MANPATH:/usr/openwin/share/man # Window Manager Tools (Solaris)
[ -d /usr/kerberos/man ] && MANPATH=$MANPATH:/usr/kerberos/man # Kerberos User Authentication (Linux)

[ -d /usr/local/man ] && MANPATH=$MANPATH:/usr/local/man
[ -d /usr/local/share/man ] && MANPATH=$MANPATH:/usr/local/share/man

export MANPATH

#
# `PAGER' is the name of the program that many applications will use to
# limit their output to a page at a time.  `more' is the original pager.
# `less' additionally allows you to back up.
#
PAGER=less
#PAGER=more

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"

#
# `EDITOR' is the name of the program that many applications will invoke
# to edit a text file.
#
#EDITOR=vim
#EDITOR=emacs
#EDITOR=pico # Warning: other users will be able to see
             #  you using this with the ps command ;-)

#
# common aliases
#
# the following is a list of commonly used aliases, to use them simply remove
# the '#' from the beginning of the line.  Read the man pages to find out 
# exactly what each command does.
#
#alias h="history | $PAGER"
#alias ls="ls -F1"
#alias l.="ls -FA1"
#alias ll="ls -slagFL"
#alias lf="ls -F"
#alias lr="ls -RF"
#alias l="ls -FLAsC"
alias bye="logout"

#
# don't put duplicate lines in the history. See bash(1) for more options
#
export HISTCONTROL=ignoredups

#
# `umask' is an octal bit mask which constrains the permissions you
# will grant to new files by default.  077 completely denies other users
# access to your files.  022 denies all other users write access.
#
umask 077

#
# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
#
shopt -s checkwinsize

#
# `TERM' determines what kind of terminal the system expects you are using.
# This affects whether and what kinds of control characters will be sent
# to your terminal client (like color codes and cursor positions).
#
#TERM=xtermc

#
# if this is an xterm set the title of the window to user@host:dir
#
case "$TERM" in
	xterm*|rxvt*)
		PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"'
		;;
	*)
    ;;
esac

#
# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc).
#
[ -f /etc/bash_completion ] && . /etc/bash_completion

#
# This runs a user defined script `.mybashrc', which by default does
# nothing.
#
[ -f ~/.bashrc.`uname` ] && . ~/.bashrc.`uname`
[ -f ~/.bashrc.`hostname` ] && . ~/.bashrc.`hostname`
[ -f ~/.mybashrc ] && . ~/.mybashrc

umask 022
