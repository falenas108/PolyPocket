package com.falenas_apps.polypocket;

import android.app.Activity;
import android.content.ContentUris;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.LoaderManager;
import android.support.v4.content.CursorLoader;
import android.support.v4.content.Loader;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.Toast;

import com.falenas_apps.polypocket.Data.PeopleContract;

import java.util.ArrayList;

//TODO:
//Change tracking number based on if delete pressedx
//Add ability to delete fields
//Add ability to add fields


public class EditorActivity extends AppCompatActivity implements LoaderManager.LoaderCallbacks<Cursor> {


    //List to keep all the fields in one place.  Stores names, view ids, and database column names that this person has.
    ArrayList<Field> FieldList = new ArrayList <>();

    private static final String[] projection = {
            PeopleContract.PeopleEntry._ID,
            PeopleContract.PeopleEntry.NAME,
            PeopleContract.PeopleEntry.PHONE,
            PeopleContract.PeopleEntry.EMAIL,
            PeopleContract.PeopleEntry.ADDRESS_ONE,
            PeopleContract.PeopleEntry.ADDRESS_TWO,
            PeopleContract.PeopleEntry.BIRTHDAY,
            PeopleContract.PeopleEntry.FOOD_LIKES,
            PeopleContract.PeopleEntry.FOOD_DISLIKES,
            PeopleContract.PeopleEntry.SEX_LIKES,
            PeopleContract.PeopleEntry.SEX_DISLIKES,
            PeopleContract.PeopleEntry.DO_NOT_DISPLAY_TRACKER
    };
    
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_editor);
        setupUI(findViewById(R.id.editorParentView));
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        new PeopleContract.headerDictionary();
        new PeopleContract.trackerDictionary();

        //Creates the array that will later be used to inflate views.
        // Projection limited to avoid getting fields that will never be inflated
        for(int i = 1;i < projection.length-1; i++){
            FieldList.add(new Field(projection[i]));
        }



        //sets title based on if editing or creating
        if (newPerson()){
            setTitle(R.string.editor_title);
            //Also inflates empty views
            setAdapterToList(FieldList);

        }else{
            setTitle("Holder");
            getSupportLoaderManager().initLoader(0,null,this);
        }


    }
    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu options from the res/menu/menu_editor.xml file.
        // This adds menu items to the app bar.
        getMenuInflater().inflate(R.menu.menu_editor, menu);
        return true;
    }

    //function that sets the adapter to the main listview.  This is the big one.
    private void setAdapterToList(ArrayList<Field> list){
        FieldArrayAdapter FieldAdapter = new FieldArrayAdapter(this,list);
        ListView fieldViews = (ListView) findViewById(R.id.allFields);
        fieldViews.setAdapter(FieldAdapter);

    }

    private boolean newPerson(){
        //returns true if user came from trying to add a new contact, and false if user came from clicking on a person.
        return (getIntent().getExtras() == null);
    }

    private void saveData(Uri uri){
        //saves data in database, either by creating a row if new person, or updating if editing
        ContentValues values = new ContentValues();
        for (Field i: FieldList){
            values.put(i.getDbColumnName(),i.getText());
        }
        //values.put(PeopleContract.PeopleEntry.NAME,name);
        if (newPerson()){
            getContentResolver().insert(uri,values);
            return;
        }else{
            getContentResolver().update(Uri.parse(getIntent().getStringExtra("Uri")),values,null,null);
            return;
        }
    }
    private long deleteData(){
        return getContentResolver().delete(Uri.parse(getIntent().getStringExtra("Uri")),null,null);

    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item){
        super.onOptionsItemSelected(item);
        switch(item.getItemId()){
            case R.id.saveButton:
                //saves new or updated data
                try {
                    saveData(PeopleContract.CONTENT_URI);
                    finish();
                }catch (IllegalArgumentException e){
                    Toast.makeText(this,R.string.empty_name_error,Toast.LENGTH_SHORT).show();
                }

                break;
            case android.R.id.home:
                //back button
                finish();
                break;
            case R.id.delete:
                //If new entry, exits without saving.  If existing contact, it deletes the contact
                if (newPerson()){
                    finish();
                }else{
                    deleteData();
                }
                finish();
        }

        return true;
    }



    @Override
    public Loader<Cursor> onCreateLoader(int id, Bundle args) {
        //Gets a URI that points to the specific person that was clicked on.
        Uri itemUri = Uri.parse(getIntent().getStringExtra("Uri"));
        String selection = "WHERE "+ PeopleContract.PeopleEntry.NAME+" =?";
        String[] selectionArgs = {String.valueOf(ContentUris.parseId(itemUri))};

        return new CursorLoader(this, itemUri,projection,selection,selectionArgs,null);
    }

    @Override
    public void onLoadFinished(Loader<Cursor> loader, Cursor data) {


        //Puts data into the correct fields
        if (data.getCount() > 0){
            data.moveToFirst();

            //Dictionary to check whether a field should be inflated
            new PeopleContract.trackerDictionary();
            int trackingNumber = data.getInt(data.getColumnIndex(PeopleContract.PeopleEntry.DO_NOT_DISPLAY_TRACKER));

            //Creates an list of all views that should be inflated and has the relevant field store any data.
            for (int i = FieldList.size()-1; i >= 0; i --) {
                Field currentField = FieldList.get(i);
                if (((float) PeopleContract.trackerDictionary.fieldTrackerNumber.get(currentField.getDbColumnName())) % trackingNumber != 0) {
                    currentField.storeData(data, currentField);
                }
                //removes fields that should not be inflated from the Array
                else{
                    FieldList.remove(i);
                }
            }
            //sets the adatper to the listview
            setAdapterToList(FieldList);
        }
    }

    @Override
    public void onLoaderReset(Loader<Cursor> loader) {

    }

    public void setupUI(View view) {
        // Set up touch listener to hide keyboard when user clicks outside a text box
        if (!(view instanceof EditText)) {
            view.setOnTouchListener(new View.OnTouchListener() {
                public boolean onTouch(View v, MotionEvent event) {
                        hideSoftKeyboard(EditorActivity.this);
                        return false;
                }
            });
        }

        //If a layout container, iterate over children and seed recursion.
        if (view instanceof ViewGroup) {
            for (int i = 0; i < ((ViewGroup) view).getChildCount(); i++) {
                View innerView = ((ViewGroup) view).getChildAt(i);
                setupUI(innerView);
            }
        }
    }
    public static void hideSoftKeyboard(Activity activity) {
        //hides keyboard
        InputMethodManager inputMethodManager =
                (InputMethodManager) activity.getSystemService(
                        Activity.INPUT_METHOD_SERVICE);
        inputMethodManager.hideSoftInputFromWindow(
                activity.getCurrentFocus().getWindowToken(), 0);
    }

}
