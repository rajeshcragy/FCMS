using System;
using Android.App;
using Android.Content;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using Android.OS;
using Android.Content;
using Android.Content.PM;
using AppAnim = Android.Resource.Animation;

namespace FCMS.Mobile.Droid
{
    [Activity(MainLauncher = true, ScreenOrientation = ScreenOrientation.Portrait, Theme = "@style/MainMenuTheme")]
    public class MainActivity : Activity
    {
        private Button btnLogin;
        private TextView txtusername;
        private TextView txtpassword;

        protected override void OnCreate(Bundle bundle)
        {
            base.OnCreate(bundle);

            // Set our view from the "main" layout resource
            SetContentView(Resource.Layout.Main);

            btnLogin = FindViewById<Button>(Resource.Id.BtnLogin);
            txtusername = FindViewById<TextView>(Resource.Id.txtUsername);
            txtpassword = FindViewById<TextView>(Resource.Id.txtPassword);

            btnLogin.Click += btnLogin_Click;
        }

        void btnLogin_Click(object sender, EventArgs e)
        {
            Toast.MakeText(this,String.Format("{0} Logged in", txtusername.Text),ToastLength.Short).Show();
            Intent intent = new Intent(this, typeof(MainMenuActivity));
            StartActivity(intent);
            this.OverridePendingTransition(AppAnim.SlideInLeft, AppAnim.SlideInLeft);
        }
    }
}

