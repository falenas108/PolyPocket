package com.falenas_apps.polypocket;
import android.content.Context;
import android.database.Cursor;
import android.support.v4.widget.CursorAdapter;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import com.falenas_apps.polypocket.R;

/**
 * Created by jayfman on 5/9/17.
 */

public class PeopleCursorAdapter extends CursorAdapter {

    public PeopleCursorAdapter(Context context,Cursor c){super(context,c,0); }

    @Override
    public View newView(Context context, Cursor cursor, ViewGroup parent) {
        //sets up the people item layout
        return LayoutInflater.from(context).inflate(R.layout.people_list_item,parent,false);
    }

    @Override
    public void bindView(View view, Context context, Cursor cursor) {
        //sets the name of the texview from the cursor it gets
        TextView mName = (TextView) view.findViewById(R.id.namePersonItem);
        mName.setText(cursor.getString(1));

    }
}
