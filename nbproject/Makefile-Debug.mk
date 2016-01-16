#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=GNU-Linux
CND_DLIB_EXT=so
CND_CONF=Debug
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/_ext/34c0e1ad/CalendarController.o \
	${OBJECTDIR}/_ext/34c0e1ad/DayTable.o \
	${OBJECTDIR}/_ext/34c0e1ad/DayTableModel.o \
	${OBJECTDIR}/_ext/34c0e1ad/Flx_Calendar.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=`fltk-config --cxxflags` 
CXXFLAGS=`fltk-config --cxxflags` 

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk lib/debug/libcalendar.a

lib/debug/libcalendar.a: ${OBJECTFILES}
	${MKDIR} -p lib/debug
	${RM} lib/debug/libcalendar.a
	${AR} -rv lib/debug/libcalendar.a ${OBJECTFILES} 
	$(RANLIB) lib/debug/libcalendar.a

${OBJECTDIR}/_ext/34c0e1ad/CalendarController.o: /home/max/cpp/fltk/Calendar/src/CalendarController.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/34c0e1ad
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/home/max/cpp/fltk/SimpleTable -I/home/max/cpp/fltk/Calendar/src -I/home/max/cpp/fltk/Calendar -I/home/max/cpp/My_1_5 -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/34c0e1ad/CalendarController.o /home/max/cpp/fltk/Calendar/src/CalendarController.cpp

${OBJECTDIR}/_ext/34c0e1ad/DayTable.o: /home/max/cpp/fltk/Calendar/src/DayTable.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/34c0e1ad
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/home/max/cpp/fltk/SimpleTable -I/home/max/cpp/fltk/Calendar/src -I/home/max/cpp/fltk/Calendar -I/home/max/cpp/My_1_5 -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/34c0e1ad/DayTable.o /home/max/cpp/fltk/Calendar/src/DayTable.cpp

${OBJECTDIR}/_ext/34c0e1ad/DayTableModel.o: /home/max/cpp/fltk/Calendar/src/DayTableModel.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/34c0e1ad
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/home/max/cpp/fltk/SimpleTable -I/home/max/cpp/fltk/Calendar/src -I/home/max/cpp/fltk/Calendar -I/home/max/cpp/My_1_5 -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/34c0e1ad/DayTableModel.o /home/max/cpp/fltk/Calendar/src/DayTableModel.cpp

${OBJECTDIR}/_ext/34c0e1ad/Flx_Calendar.o: /home/max/cpp/fltk/Calendar/src/Flx_Calendar.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/34c0e1ad
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/home/max/cpp/fltk/SimpleTable -I/home/max/cpp/fltk/Calendar/src -I/home/max/cpp/fltk/Calendar -I/home/max/cpp/My_1_5 -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/34c0e1ad/Flx_Calendar.o /home/max/cpp/fltk/Calendar/src/Flx_Calendar.cpp

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} lib/debug/libcalendar.a

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
