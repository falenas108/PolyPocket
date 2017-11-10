package com.falenas_apps.polypocket;

import android.database.Cursor;
import android.util.Log;
import android.widget.EditText;

import static android.R.attr.data;
import static android.R.attr.label;

/**
 * Created by jayfman on 5/22/17.
 */
//A field object stores the data, view ids, and database column names
public class Field {
    //Name of the column, text itself, and tracking any changes to the tracking number.  Multiplies the old number, so 1 means no change.
    private String mColumnName;
    private String mTextInfo;
    private int mTrackingNumberfactor = 1;


    public Field(String dbColumnName){
        mColumnName = dbColumnName;

    }

    //getters
    public String getDbColumnName(){return mColumnName;}
    public String getText(){return mTextInfo;}
    public int getTrackingNum(){return mTrackingNumberfactor;}

    //setters
    public void storeData(Cursor c,Field thisField){mTextInfo = c.getString(c.getColumnIndex(thisField.getDbColumnName()));}
    public void setText(String string){mTextInfo = string;}
    public void setTrackingNumberfactor(int factor){mTrackingNumberfactor*=factor;}


}
