using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using Android.Content.PM;
using SupportToolbar = Android.Support.V7.Widget.Toolbar;
using supportApp = Android.Support.V7.App;
using Android.Support.V4.Widget;
using Android.Graphics;
using com = Android.Support.V4.App.ActivityCompat;
using SupportFragment = Android.Support.V4.App.Fragment;
using AppAnim = Android.Resource.Animation;
using FCMS.Mobile.Android;


namespace FCMS.Mobile.Droid
{
    [Activity(ScreenOrientation = ScreenOrientation.Portrait, Theme = "@style/MainMenuTheme")]
    public class MainMenuActivity : supportApp.ActionBarActivity
    {
        private SupportToolbar mToolbar;
        private MainMenuLeftDrawerToggle mDrawerToggle;
        private DrawerLayout mDrawerLayout;
        private LinearLayout mLeftDrawer;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            SetContentView(Resource.Layout.MainMenu);

            mToolbar = FindViewById<SupportToolbar>(Resource.Id.toolbar);
            mDrawerLayout = FindViewById<DrawerLayout>(Resource.Id.drawer_layout);
            mLeftDrawer = FindViewById<LinearLayout>(Resource.Id.Layoutroot);


            SetSupportActionBar(mToolbar);

             mDrawerToggle = new MainMenuLeftDrawerToggle(
                this,							//Host Activity
                mDrawerLayout,					//DrawerLayout
                Resource.String.openDrawer,		//Opened Message
                Resource.String.closeDrawer		//Closed Message
            );

            mDrawerLayout.SetDrawerListener(mDrawerToggle);
            SupportActionBar.SetHomeButtonEnabled(true);
            SupportActionBar.SetDisplayHomeAsUpEnabled(true);
            SupportActionBar.SetDisplayShowTitleEnabled(true);
            mDrawerToggle.SyncState();


        }
    }
}