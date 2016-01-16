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
CND_CONF=Release
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
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libcalendar.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libcalendar.a: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libcalendar.a
	${AR} -rv ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libcalendar.a ${OBJECTFILES} 
	$(RANLIB) ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libcalendar.a

${OBJECTDIR}/_ext/34c0e1ad/CalendarController.o: /home/max/cpp/fltk/Calendar/src/CalendarController.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/34c0e1ad
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/34c0e1ad/CalendarController.o /home/max/cpp/fltk/Calendar/src/CalendarController.cpp

${OBJECTDIR}/_ext/34c0e1ad/DayTable.o: /home/max/cpp/fltk/Calendar/src/DayTable.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/34c0e1ad
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/34c0e1ad/DayTable.o /home/max/cpp/fltk/Calendar/src/DayTable.cpp

${OBJECTDIR}/_ext/34c0e1ad/DayTableModel.o: /home/max/cpp/fltk/Calendar/src/DayTableModel.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/34c0e1ad
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/34c0e1ad/DayTableModel.o /home/max/cpp/fltk/Calendar/src/DayTableModel.cpp

${OBJECTDIR}/_ext/34c0e1ad/Flx_Calendar.o: /home/max/cpp/fltk/Calendar/src/Flx_Calendar.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/34c0e1ad
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/34c0e1ad/Flx_Calendar.o /home/max/cpp/fltk/Calendar/src/Flx_Calendar.cpp

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libcalendar.a

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
