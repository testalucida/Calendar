#include "DayTable.h"
#include <my/TableData.h>

using namespace my;

//===========================================================

DayTableCellStyleProvider::DayTableCellStyleProvider()  {
    
    _normal.size = 10;
    _normal.color = FL_BLACK;
    
    _fontToday.size = 10;
    _fontToday.color = FL_WHITE;
    
    _weekday.backColor = FL_WHITE;
    _weekday.boxtype = FL_FLAT_BOX;
    
    _weekend.backColor = fl_rgb_color( 193, 211, 255 );
    _weekend.boxtype = FL_FLAT_BOX;
    
    _selected.backColor = FL_YELLOW;
    _selected.boxtype = FL_FLAT_BOX;
    
    _today.backColor = FL_BLACK;
    _today.boxtype = FL_FLAT_BOX;
}

const BackgroundStyle &
DayTableCellStyleProvider::getBackgroundStyle( int row, int colIdxView, 
                                               int colIdxModel, bool isSelected )
{
    if( isSelected ) {
        return _selected;
    }
    if( row == _rowToday && colIdxView == _colToday ) {
        return _today;
    }
    if( colIdxView < 5 ) {
        return _weekday;
    }
    return _weekend;
}

const FontStyle& 
DayTableCellStyleProvider::getFontAndColor( int row, int colIdxView, int colIdxModel, bool isSelected )
{
    if( row == _rowToday && colIdxView == _colToday ) {
        if( isSelected ) {
            _fontToday.color = FL_BLACK;
        } else {
            _fontToday.color = FL_WHITE;
        }
        return _fontToday;
    }
    return DefaultCellStyleProvider::getFontAndColor( row, colIdxView, colIdxModel, isSelected );
}
//============================================================

DayTable::DayTable( int x, int y, int w, int h ) : SimpleTable( x, y, w, h ) {
    _r = _c = -1;
    //_weekendColor = fl_rgb_color( 193, 211, 255 );
    
    SimpleTable::setCellStyleProvider( &_cellStyleProvider );
    
	col_resize( 0 );    
    row_resize( 0 );
    setSelectionMode( SELECTIONMODE_CELL_SINGLE );
}

bool DayTable::canSelectCell( int row, int col )  {
	if( row < 0 || col < 0 ) return false; //
    const char* val = getTableData()->getValue( row, col );
    return val[0] > ' ' || val[1] > ' ';
}

/** overrides Flx_Table::getCellBackground(..) */
//Fl_Color DayTable::getCellBackground( int row, int col, bool isSelected ) const {
//    if ( _rowToday == row && _colToday == col ) {
//        return isSelected ? FL_YELLOW : FL_GRAY;
//    }
//
//    return isSelected ? FL_YELLOW :
//            (col == 5 || col == 6) ? _weekendColor : FL_WHITE;
//}

void DayTable::setToday( int row, int col ) { 
	//clearSelection();
	_rowToday = row; _colToday = col; 
    _cellStyleProvider.setToday( row, col );
}
