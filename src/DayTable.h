#ifndef _DAYTABLE_H_
#define _DAYTABLE_H_

#include <SimpleTable.h>
#include <ICellStyleProvider.h>

class DayTableCellStyleProvider : public DefaultCellStyleProvider {
    public:
        DayTableCellStyleProvider();
        
        virtual const BackgroundStyle& 
        getBackgroundStyle( int row, int colIdxView, 
                            int colIdxModel, bool isSelected );
        
        virtual const FontStyle& 
        getFontAndColor( int row, int colIdxView, int colIdxModel, bool isSelected );
        
        void setToday( int row, int col ) {
            _rowToday = row;
            _colToday = col;
        }
    private:
        FontStyle _normal;
        FontStyle _fontToday;
        BackgroundStyle _weekday;
        BackgroundStyle _weekend;
        BackgroundStyle _selected;
        BackgroundStyle _today;
        int _rowToday, _colToday;
};

class DayTable : public SimpleTable {
public:
    DayTable( int x, int y, int w, int h ) ;

	/** don't select cells without values */
	virtual bool canSelectCell( int row, int col );
	/** overrides MyTable::cellBackground(..) */
    //virtual Fl_Color getCellBackground( int row, int col, bool isSelected ) const;
	/** for background color purposes: set today's row and col index.
	    Might be -1 if a month other than the current one is to be
		shown. */
	void setToday( int row, int col );
protected:
    //bool isCellEditable(int row, int col) const;

private:
//    friend class DayTableCellStyleProvider;
	//DayTableModel *_pDtm;
	int _rowToday, _colToday;
    int _r, _c; //remember last selected cell
	//Fl_Color _weekendColor;
    DayTableCellStyleProvider _cellStyleProvider;
};



#endif