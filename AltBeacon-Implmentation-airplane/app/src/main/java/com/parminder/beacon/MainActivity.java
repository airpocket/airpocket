package com.parminder.beacon;

import android.app.ProgressDialog;
import android.os.RemoteException;
import android.support.v7.app.ActionBarActivity;
import android.os.Bundle;
import android.util.Log;
import android.widget.Toast;


import com.android.volley.Request;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.VolleyLog;
import com.android.volley.toolbox.JsonObjectRequest;
import com.example.deepankar.beacon.R;

import org.altbeacon.beacon.Beacon;
import org.altbeacon.beacon.BeaconConsumer;
import org.altbeacon.beacon.BeaconManager;
import org.altbeacon.beacon.BeaconParser;
import org.altbeacon.beacon.MonitorNotifier;
import org.altbeacon.beacon.RangeNotifier;
import org.altbeacon.beacon.Region;
import org.altbeacon.beacon.powersave.BackgroundPowerSaver;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;


//Implement BeaconConsumer
public class MainActivity extends ActionBarActivity implements BeaconConsumer {

    //Add a Background Saver so that when the app runs u have don't drain the battery much
    private BackgroundPowerSaver backgroundPowerSaver;
    protected static final String TAG = "MonitoringActivity";
    protected static final String TAG2 = "NEW";
    private BeaconManager beaconManager;
    ProgressDialog pDialog;
    ArrayList uuidList = new ArrayList(150);
//creating arraylist

    @Override
    protected void onCreate(Bundle savedInstanceState) {

        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        beaconManager = BeaconManager.getInstanceForApplication(this);

        Log.i(TAG, "OnCreate");


        //Below is the profile for iBeacon don't touch it ... by default is altBeacon profile
    beaconManager.getBeaconParsers().add(new BeaconParser().
            setBeaconLayout("m:0-3=4c000215,i:4-19,i:20-21,i:22-23,p:24-24"));
        beaconManager.bind(this);
        backgroundPowerSaver = new BackgroundPowerSaver(this);
    }

    protected void onDestroy() {
        super.onDestroy();
        beaconManager.unbind(this);
    }

    @Override
    public void onBeaconServiceConnect() {

        //SetMonitorNotifier for Monitoring Function
        beaconManager.setMonitorNotifier(new MonitorNotifier() {
            @Override
            public void didEnterRegion(Region region) {
                Log.i(TAG, "I just saw an beacon for the first time!");
            }

            @Override
            public void didExitRegion(Region region) {
                Log.i(TAG, "I no longer see an beacon");
            }

            @Override
            public void didDetermineStateForRegion(int state, Region region) {
                Log.i(TAG, "I have just switched from seeing/not seeing beacons: " + state);
            }
        });

        //Range Setting Notifier
        beaconManager.setRangeNotifier(new RangeNotifier() {
            @Override
            public void didRangeBeaconsInRegion(final Collection<Beacon> beacons, Region region) {
                if (beacons.size() > 0) {
                    final String s = (beacons.iterator().next().getId1()).toString();
                    Log.i(TAG,"The value of beacons"+beacons.size());
                    Log.i(TAG, "The first beacon I see is about " + beacons.iterator().next().getDistance() + " meters away.");
                    Log.i(TAG, "The first beacon I see is having UUID as: " + beacons.iterator().next().getId1() + ":" + beacons.iterator().next().getId2() + ":" + beacons.iterator().next().getId3());
                    Log.i(TAG,""+uuidList);
                    Log.i(TAG, "vaaaa"+uuidList.contains(s));
                    // Tag used to cancel the request


                    //checking that uuid exist in array
                      //if yes then means it is coming second time
                    if(uuidList.contains(s)){

                        Log.i(TAG,"Second time it is coming");
                    }

                    else{
                        //collecting all the scanned value
                        uuidList.add(s);
                        Log.i(TAG,"i m in ese");
                        //sending the json request for the sms
                        //code for json
                        String tag_json_obj = "json_obj_req";

                        String url = "http://10.10.20.169:82/Airport-Automation/luggage/plan?uuid="+beacons.iterator().next().getId1();
                        JsonObjectRequest jsonObjReq = new JsonObjectRequest(Request.Method.POST,
                                url, null,
                                new Response.Listener<JSONObject>() {

                                    @Override
                                    public void onResponse(JSONObject response) {
                                        Log.d(TAG2,response+"");
                                        Toast.makeText(getApplicationContext(),"SMS send",Toast.LENGTH_LONG).show();
                                    }
                                }, new Response.ErrorListener() {

                            @Override
                            public void onErrorResponse(VolleyError error) {
                                Log.d(TAG2, "Error: " + error.getMessage());

                            }
                        }) {

                            @Override
                            protected Map<String, String> getParams() {
                                Map<String, String> params = new HashMap<String, String>();
                                params.put("name", "parminder");
                                return params;
                            }

                        };
                        AppController.getInstance().addToRequestQueue(jsonObjReq, tag_json_obj);

                    }



                }
            }
        });

        try {
            beaconManager.startMonitoringBeaconsInRegion(new Region("myMonitoringUniqueId", null, null, null));
            beaconManager.startRangingBeaconsInRegion(new Region("myRangingUniqueId", null, null, null));
        } catch (RemoteException e) {
        }
    }

}
