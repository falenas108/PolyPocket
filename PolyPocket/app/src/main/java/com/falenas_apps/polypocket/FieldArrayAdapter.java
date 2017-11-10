package com.falenas_apps.polypocket;

import android.app.DatePickerDialog;
import android.content.Context;
import android.support.annotation.LayoutRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.telephony.PhoneNumberFormattingTextWatcher;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import com.falenas_apps.polypocket.Data.PeopleContract;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;

import static android.R.attr.resource;
import static android.text.InputType.TYPE_CLASS_PHONE;
import static android.text.InputType.TYPE_CLASS_TEXT;
import static android.text.InputType.TYPE_TEXT_VARIATION_EMAIL_ADDRESS;
import static android.text.InputType.TYPE_TEXT_VARIATION_POSTAL_ADDRESS;
import static com.falenas_apps.polypocket.R.id.fieldHeader;
import static com.falenas_apps.polypocket.R.id.info;

/**
 * Created by jayfman on 6/12/17.
 */

//Adapter to set the fields of a person's information to the textviews in the editor activity
public class FieldArrayAdapter extends ArrayAdapter<Field>{
    public FieldArrayAdapter(@NonNull Context context, @NonNull List<Field> objects) {
        super(context, 0, objects);
    }
    //sets the formatting if the field is a calendar
    private void calFormat(final EditText calView ){
        final Calendar myCalendar = Calendar.getInstance();
        final DatePickerDialog.OnDateSetListener date = new DatePickerDialog.OnDateSetListener() {
            @Override
            public void onDateSet(DatePicker view, int year, int monthOfYear,
                                  int dayOfMonth) {
                myCalendar.set(Calendar.YEAR, year);
                myCalendar.set(Calendar.MONTH, monthOfYear);
                myCalendar.set(Calendar.DAY_OF_MONTH, dayOfMonth);
                String myFormat = "MM/dd/yy"; //In which you need put here
                SimpleDateFormat sdf = new SimpleDateFormat(myFormat, Locale.US);

                calView.setText(sdf.format(myCalendar.getTime()));
            }
        };

        calView.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public boolean onTouch(View v, MotionEvent event) {
                Log.v("Click Listener", "Is it here");
                if (event.getAction() == MotionEvent.ACTION_UP) {
                    new DatePickerDialog(getContext(), date, myCalendar.get(Calendar.YEAR), myCalendar.get(Calendar.MONTH), myCalendar.get(Calendar.DAY_OF_MONTH)).show();
                    return true;
                }
                return false;
            }
        });
    }


    @NonNull
    @Override
    public View getView(int position, @Nullable View convertView, @NonNull ViewGroup parent) {
        //Gets the current field being accessed
        final Field currentField = getItem(position);



            //  Tells what type of view to have in each case
            switch (currentField.getDbColumnName()) {
                case PeopleContract.PeopleEntry.FOOD_DISLIKES:
                case PeopleContract.PeopleEntry.FOOD_LIKES:
                case PeopleContract.PeopleEntry.SEX_LIKES:
                case PeopleContract.PeopleEntry.SEX_DISLIKES:
                    convertView = LayoutInflater.from(getContext()).inflate(R.layout.field_list_item_large, parent, false);
                    break;
                default:
                    convertView = LayoutInflater.from(getContext()).inflate(R.layout.field_list_item_small, parent, false);
            }



        new PeopleContract.headerDictionary();
        //Gets the header,textview, and button fields
        TextView headerTextView = (TextView) convertView.findViewById(R.id.fieldHeader);
        EditText infoTextView = (EditText) convertView.findViewById(R.id.fieldEditText);
        ImageView deleteFieldButton = (ImageView) convertView.findViewById(R.id.deletButton);

        //sets the text header that corresponds to the database header
        headerTextView.setText(getContext().getString(PeopleContract.headerDictionary.fieldHeaders.get(currentField.getDbColumnName())));
        //Sets the EditText box with the person's information
        infoTextView.setText(currentField.getText());

        //Stores any data that is entered in the arary, does not save data to database
        infoTextView.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence charSequence, int i, int i1, int i2) {}
            @Override
            public void onTextChanged(CharSequence charSequence, int i, int i1, int i2) {}
            @Override
            public void afterTextChanged(Editable s) {
                currentField.setText(s.toString());

            }
        });

        //Special formatting for phone and calendar fields
        switch (currentField.getDbColumnName()){
            case PeopleContract.PeopleEntry.PHONE:
                infoTextView.setInputType(TYPE_CLASS_PHONE);
                infoTextView.addTextChangedListener(new PhoneNumberFormattingTextWatcher());
                break;
            case PeopleContract.PeopleEntry.BIRTHDAY:
                calFormat(infoTextView);
                break;
            case PeopleContract.PeopleEntry.ADDRESS_ONE:
            case PeopleContract.PeopleEntry.ADDRESS_TWO:
                infoTextView.setInputType(TYPE_CLASS_TEXT | TYPE_TEXT_VARIATION_POSTAL_ADDRESS);
            break;
            case PeopleContract.PeopleEntry.EMAIL:
                infoTextView.setInputType(TYPE_TEXT_VARIATION_EMAIL_ADDRESS);
        }

        //Removes view icon and deletes field if uses presess delete image
        deleteFieldButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                currentField.setTrackingNumberfactor(PeopleContract.trackerDictionary.fieldTrackerNumber.get(currentField.getDbColumnName()));
                Toast.makeText(getContext(), "Field will be deleted on save, exit without saving to keep field", Toast.LENGTH_LONG).show();

            }
        });

        return  convertView;

    }

}
