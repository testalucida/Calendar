#ifndef _CALENDARCONTROLLER_H_
#define _CALENDARCONTROLLER_H_

#include "DayTableModel.h"

namespace my {
	class MyDate;
}


class DayTable;
class Fl_Choice;
class Fl_Widget;

class CalendarController {
public:
	CalendarController( Fl_Choice &months, Fl_Choice &years, DayTable &tbl );
	~CalendarController(void);
	
	void setDate( const my::MyDate & );
    void getSelectedDate( my::MyDate & );
    
    /** sets a range of years to be shown in the years combobox
        "show" will be seen in the combobox */
    void setYearRange( int from, int to, int show );
    
private:
	/** updates day table by the given date (nn, yyyy, dd) */
	void setDays( int month, int year, int day );
    static void comboCallbackStatic( Fl_Widget *, void *);
   
    void onMonthYearChanged();
private:
	Fl_Choice &_months;
	Fl_Choice &_years;
	DayTable &_dayTbl;
	DayTableModel _daysModel;
};



#endif
