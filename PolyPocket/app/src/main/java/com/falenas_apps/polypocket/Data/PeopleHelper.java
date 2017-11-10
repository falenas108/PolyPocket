package com.falenas_apps.polypocket.Data;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

/**
 * Created by jayfman on 5/7/17.
 */

public class PeopleHelper extends SQLiteOpenHelper {

    static final private String DATABASE_NAME = "PeopleReader.db";
    static final private int VERSION_NUMBER = 7;

    public PeopleHelper(Context context){
        super(context,DATABASE_NAME,null,VERSION_NUMBER);
    }

    @Override
    public void onCreate(SQLiteDatabase sqLiteDatabase) {
        //Defines table
        //Other fields allow for user created fields,
        // where the header column is the names for the fields and the text is the inputs.
        String SQL_CREATE_TABLE = "CREATE TABLE "+ PeopleContract.PeopleEntry.TABLE_NAME+ "("+
                PeopleContract.PeopleEntry._ID+" INTEGER PRIMARY KEY AUTOINCREMENT, "+
                PeopleContract.PeopleEntry.DISPLAY_ORDER +" INTEGER, "+
                PeopleContract.PeopleEntry.IS_MYSELF +" INTEGER DEFAULT 0, "+
                PeopleContract.PeopleEntry.FAVORITE+" INTEGER DEFAULT 0, "+
                PeopleContract.PeopleEntry.NAME+" STRING NOT NULL, "+
                PeopleContract.PeopleEntry.EMAIL+" STRING, "+
                PeopleContract.PeopleEntry.PHONE+" STRING, "+
                PeopleContract.PeopleEntry.ADDRESS_ONE+" STRING, "+
                PeopleContract.PeopleEntry.ADDRESS_TWO+" STRING, "+
                PeopleContract.PeopleEntry.BIRTHDAY+" STRING, "+
                PeopleContract.PeopleEntry.FOOD_LIKES+" STRING, "+
                PeopleContract.PeopleEntry.FOOD_DISLIKES+" STRING, "+
                PeopleContract.PeopleEntry.SEX_LIKES+" STRING, "+
                PeopleContract.PeopleEntry.SEX_DISLIKES+" STRING, "+
                PeopleContract.PeopleEntry.OTHER_FIELDS_HEADER+" STRING, "+
                PeopleContract.PeopleEntry.OTHER_FIELDS_TEXT+" STRING, "+
                //DO_NOT_DISPLAY_TRACKER field stores an integer that tracks which columns are empty.
                // Each other nullable field is assigned a prime number and if the user hides that field,
                // the corresponding prime number multiplies the tracker.  Before inflating fields on the editor screen,
                //the program checks if that field number divides this variable, and if so the field is not inflated
                PeopleContract.PeopleEntry.DO_NOT_DISPLAY_TRACKER+" INTEGER DEFAULT 2);";
        sqLiteDatabase.execSQL(SQL_CREATE_TABLE);


    }

    @Override
    public void onUpgrade(SQLiteDatabase sqLiteDatabase, int oldVersion, int newVersion) {
        if (newVersion>oldVersion);{
            String SQL_DELETE_ENTRIES = "DROP TABLE "+ PeopleContract.PeopleEntry.TABLE_NAME;
            sqLiteDatabase.execSQL(SQL_DELETE_ENTRIES);
            onCreate(sqLiteDatabase);
        }

    }
}
