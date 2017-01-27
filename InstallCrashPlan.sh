#!/bin/bash
#Install CrashPlan

##Requires hands on w/ CrashPlan login after the fact.
/usr/bin/curl $safetynetURL > /tmp/Code42CrashPlan_Mac.dmg
###Part 2: Mount, install, and unmount installer.
hdiutil attach /tmp/Code42CrashPlan_Mac.dmg
/usr/sbin/installer -target / -pkg /Volumes/Code42CrashPlan/Install\ Code42\ CrashPlan.pkg
hdiutil detach /Volumes/Code42CrashPlan

###Part 3: Remove custom installer.
/bin/rm /tmp/Code42CrashPlan_Mac.dmg