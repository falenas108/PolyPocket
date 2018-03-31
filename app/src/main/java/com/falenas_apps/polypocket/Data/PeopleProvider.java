package com.falenas_apps.polypocket.Data;

import android.content.ContentProvider;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;

import java.security.Provider;

import static com.falenas_apps.polypocket.Data.PeopleContract.CONTENT_AUTHORITY;
import static com.falenas_apps.polypocket.Data.PeopleContract.PATH_PEOPLE;

/**
 * Created by jayfman on 5/7/17.
 */

public class PeopleProvider extends ContentProvider {


    //Variables for accessing the entire database or just one row
    private static final int PEOPLE_TABLE = 100;
    private static final int PEOPLE_ID = 101;
    //variable that tells if the URI matches
    private static final UriMatcher sUriMatcher = new UriMatcher(UriMatcher.NO_MATCH);
    //MIME type of a list of people
    public static final String CONTENT_LIST_TYPE = ContentResolver.CURSOR_DIR_BASE_TYPE + "/" + CONTENT_AUTHORITY + "/" + PATH_PEOPLE;
    //MIME type of a single person
    public static final String CONTENT_ITEM_TYPE = ContentResolver.CURSOR_ITEM_BASE_TYPE + "/" + CONTENT_AUTHORITY + "/" + PATH_PEOPLE;

    static {
        sUriMatcher.addURI(CONTENT_AUTHORITY, PATH_PEOPLE, PEOPLE_TABLE);
        sUriMatcher.addURI(CONTENT_AUTHORITY, PATH_PEOPLE+"/#", PEOPLE_ID);
    }

    //Makes sure a name is entered
    private boolean RequiredFieldsEmpty(ContentValues content){
        String string = content.getAsString(PeopleContract.PeopleEntry.NAME);
        Log.v("Name Provider",content.toString());
        Log.v("Name part 2",content.getAsString(PeopleContract.PeopleEntry.NAME)+"hi");
        //return content.getAsString(PeopleContract.PeopleEntry.NAME).isEmpty();
        return (string == null);
    }
    private PeopleHelper mPeopleHelper;
    @Override
    public boolean onCreate() {
        mPeopleHelper = new PeopleHelper(getContext());
        return true;
    }

    @Nullable
    @Override
    public Cursor query(@NonNull Uri uri, @Nullable String[] projection, @Nullable String selection, @Nullable String[] selectionArgs, @Nullable String sortOrder) {
        SQLiteDatabase db = mPeopleHelper.getReadableDatabase();
        final int match = sUriMatcher.match(uri);
        Cursor cursor;


        switch (match){
            case PEOPLE_TABLE:
                //queries the whole table
                cursor = db.query(PeopleContract.PeopleEntry.TABLE_NAME,projection,selection,selectionArgs,null,null,sortOrder);
                break;
            case PEOPLE_ID:
                //queries a single ID
                selection = PeopleContract.PeopleEntry._ID+"=?";
                selectionArgs = new String[] {String.valueOf(ContentUris.parseId(uri))};
                cursor = db.query(PeopleContract.PeopleEntry.TABLE_NAME,projection,selection,selectionArgs,null,null,sortOrder);
                break;
            default:
                throw new IllegalArgumentException("Unknown URI"+uri);

        }
        cursor.setNotificationUri(getContext().getContentResolver(),uri);
        return cursor;
    }

    @Nullable
    @Override
    public String getType(@NonNull Uri uri) {
        final int match = sUriMatcher.match(uri);
        getContext().getContentResolver().notifyChange(uri,null);
        switch (match) {
            case PEOPLE_TABLE:
                return CONTENT_LIST_TYPE;
            case PEOPLE_ID:
                return CONTENT_ITEM_TYPE;
            default:
                throw new IllegalStateException("Unknown URI " + uri + " with match " + match);
        }
    }

    @Nullable
    @Override
    public Uri insert(@NonNull Uri uri, @Nullable ContentValues contentValues) {
        SQLiteDatabase db = mPeopleHelper.getWritableDatabase();
        final int match = sUriMatcher.match(uri);
        //UI updates on insert
        getContext().getContentResolver().notifyChange(uri,null);

        //checks that name field isn't empty
        if (RequiredFieldsEmpty(contentValues)) {
            throw new IllegalArgumentException("Name field empty");
        }else{
        switch (match) {
            //checks valid URI
            case PEOPLE_TABLE:
                long idEntered = db.insert(PeopleContract.PeopleEntry.TABLE_NAME, null, contentValues);
                return ContentUris.withAppendedId(uri, idEntered);
            default:
                throw new IllegalArgumentException("Invalid URI " + uri);
        }

        }
    }

    @Override
    public int delete(@NonNull Uri uri, @Nullable String selection, @Nullable String[] selectionArgs) {
        SQLiteDatabase db = mPeopleHelper.getWritableDatabase();
        getContext().getContentResolver().notifyChange(uri,null);
        long peopleId;
        final int match = sUriMatcher.match(uri);
        switch (match){
            case PEOPLE_TABLE:
                peopleId = db.delete(PeopleContract.PeopleEntry.TABLE_NAME,selection,selectionArgs);
                break;
            case PEOPLE_ID:
                selection = PeopleContract.PeopleEntry._ID+"=?";
                selectionArgs = new String[] {String.valueOf(ContentUris.parseId(uri))};
                peopleId = db.delete(PeopleContract.PeopleEntry.TABLE_NAME,selection,selectionArgs);
                break;
            default:
                throw new IllegalArgumentException("Invalid URI "+uri);
        }
        return (int) peopleId;
    }

    @Override
    public int update(@NonNull Uri uri, @Nullable ContentValues contentValues, @Nullable String selection, @Nullable String[] selectionArgs) {
        SQLiteDatabase db = mPeopleHelper.getWritableDatabase();
        getContext().getContentResolver().notifyChange(uri,null);
        long peopleId;
        final int match = sUriMatcher.match(uri);
        if (RequiredFieldsEmpty(contentValues)){
            throw new IllegalArgumentException("Name field must not be empty");
        }else{
            switch (match){
                case PEOPLE_ID:
                    selection = PeopleContract.PeopleEntry._ID+"=?";
                    selectionArgs = new String[] {String.valueOf(ContentUris.parseId(uri))};
                    peopleId = db.update(PeopleContract.PeopleEntry.TABLE_NAME,contentValues,selection,selectionArgs);
                    break;
                default:
                    throw new IllegalArgumentException("Invalid URI "+uri);
            }

        }


        return (int) peopleId;
    }
}
