package com.falenas_apps.polypocket.Data;

import android.net.Uri;
import android.provider.BaseColumns;
import android.util.Log;

import com.falenas_apps.polypocket.R;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by jayfman on 5/7/17.
 */
//Contract for database of people
public final class PeopleContract {

    //URI for accessing the People table
    public static final String CONTENT_AUTHORITY = "com.falenas_apps.polypocket";
    public static final Uri BASE_CONTENT_URI = Uri.parse("content://" + CONTENT_AUTHORITY);
    public static final String PATH_PEOPLE = "people";
    public static final Uri CONTENT_URI = Uri.withAppendedPath(BASE_CONTENT_URI,PATH_PEOPLE);

    private PeopleContract(){}

    //table and column names
   public static class PeopleEntry implements BaseColumns{

        public static final String TABLE_NAME = "people";
        public static final String _ID = BaseColumns._ID;
        public static final String DISPLAY_ORDER = "sortingorder";
        public static final String IS_MYSELF = "isMe";
        public static final String FAVORITE = "favorite";
        public static final String NAME = "name";
        public static final String EMAIL ="email";
        public static final String PHONE = "phone";
        public static final String ADDRESS_ONE = "addressOne";
        public static final String ADDRESS_TWO = "addressTwo";
        public static final String BIRTHDAY = "birthday";
        public static final String FOOD_LIKES = "foodlikes";
        public static final String FOOD_DISLIKES ="foodDislikes";
        public static final String SEX_LIKES = "sexLikes";
        public static final String SEX_DISLIKES = "sexDislikes";
        public static final String OTHER_FIELDS_HEADER = "otherFields";
        public static final String OTHER_FIELDS_TEXT = "other";
        public static final String DO_NOT_DISPLAY_TRACKER = "isEmpty";
    }

    //Map to link the header name to the text for headers of the fields
    public static class headerDictionary{
        public static final Map<String, Integer> fieldHeaders = new HashMap<>();
        public headerDictionary() {
            fieldHeaders.put(PeopleEntry.NAME, R.string.name);
            fieldHeaders.put(PeopleEntry.EMAIL, R.string.email_header);
            fieldHeaders.put(PeopleEntry.PHONE, R.string.phone);
            fieldHeaders.put(PeopleEntry.ADDRESS_ONE, R.string.address_one);
            fieldHeaders.put(PeopleEntry.ADDRESS_TWO, R.string.address_two);
            fieldHeaders.put(PeopleEntry.BIRTHDAY, R.string.birthday);
            fieldHeaders.put(PeopleEntry.FOOD_LIKES, R.string.food_good);
            fieldHeaders.put(PeopleEntry.FOOD_DISLIKES, R.string.food_bad);
            fieldHeaders.put(PeopleEntry.SEX_LIKES, R.string.sex_good);
            fieldHeaders.put(PeopleEntry.SEX_DISLIKES, R.string.sex_bad);
        }
    }
    //Map that gives each field a prime number, works with Do_NOT_DISPLAY_TRACKER to see if field should be displayed
    // If the tracker is divisible by a field's number, then the field is not displayed
    // The tracker is updated when the user removes a field from a profile
    //Fields that are never displayed are all given the number 1, so they are never displayed
    //The Other fields tag is unique in that it starts not displayed.  The tracking number starts at 2, same as the starting number,
    //and if it should be displayed the tracking number is divided by 2
    public static class trackerDictionary{
        public static final HashMap<String,Integer> fieldTrackerNumber = new HashMap<>();
        public trackerDictionary(){
            fieldTrackerNumber.put(PeopleEntry._ID,2);
            fieldTrackerNumber.put(PeopleEntry.DISPLAY_ORDER,1);
            fieldTrackerNumber.put(PeopleEntry.IS_MYSELF,1);
            fieldTrackerNumber.put(PeopleEntry.FAVORITE,1);
            fieldTrackerNumber.put(PeopleEntry.NAME,3);
            fieldTrackerNumber.put(PeopleEntry.EMAIL,5);
            fieldTrackerNumber.put(PeopleEntry.PHONE,7);
            fieldTrackerNumber.put(PeopleEntry.ADDRESS_ONE,11);
            fieldTrackerNumber.put(PeopleEntry.ADDRESS_TWO,13);
            fieldTrackerNumber.put(PeopleEntry.BIRTHDAY,17);
            fieldTrackerNumber.put(PeopleEntry.FOOD_LIKES,19);
            fieldTrackerNumber.put(PeopleEntry.FOOD_DISLIKES,23);
            fieldTrackerNumber.put(PeopleEntry.SEX_LIKES,29);
            fieldTrackerNumber.put(PeopleEntry.SEX_DISLIKES,31);
            fieldTrackerNumber.put(PeopleEntry.OTHER_FIELDS_HEADER,2);
            fieldTrackerNumber.put(PeopleEntry.OTHER_FIELDS_TEXT,2);
            fieldTrackerNumber.put(PeopleEntry.DO_NOT_DISPLAY_TRACKER,2);
        }
    }
}
