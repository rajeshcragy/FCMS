using System;
using SupportActionBarDrawerToggle = Android.Support.V7.App.ActionBarDrawerToggle;
using Android.Support.V7.App;
using Android.Support.V4.Widget;
using AppView = Android.Views;

namespace FCMS.Mobile.Android
{
    public class MainMenuLeftDrawerEventArgs : EventArgs
    {
        public AppView.View DrawerView { get; set; }
        public float SlideOffset { get; set; }
        public int NewState { get; set; }
    }

    public delegate void MainMenuLeftDrawerChangedEventHandler(object s, MainMenuLeftDrawerEventArgs e);

    public class MainMenuLeftDrawerToggle : SupportActionBarDrawerToggle
    {
        private ActionBarActivity mHostActivity;
        private int mOpenedResource;
        private int mClosedResource;

        public MainMenuLeftDrawerToggle(ActionBarActivity host, DrawerLayout drawerLayout, int openedResource, int closedResource)
            : base(host, drawerLayout, openedResource, closedResource)
        {
            mHostActivity = host;
            mOpenedResource = openedResource;
            mClosedResource = closedResource;
        }

        public event MainMenuLeftDrawerChangedEventHandler DrawerClosed;
        public event MainMenuLeftDrawerChangedEventHandler DrawerOpened;
        public event MainMenuLeftDrawerChangedEventHandler DrawerSlide;
        public event MainMenuLeftDrawerChangedEventHandler DrawerStateChanged;


        public override void OnDrawerOpened(AppView.View drawerView)
        {
            if (null != DrawerOpened)
                DrawerOpened(this, new MainMenuLeftDrawerEventArgs { DrawerView = drawerView });
            int drawerType = (int)drawerView.Tag;

            if (drawerType == 0)
            {
                base.OnDrawerOpened(drawerView);
            }
        }

        public override void OnDrawerClosed(AppView.View drawerView)
        {
            if (null != DrawerClosed)
                DrawerClosed(this, new MainMenuLeftDrawerEventArgs { DrawerView = drawerView });
            int drawerType = (int)drawerView.Tag;

            if (drawerType == 0)
            {
                base.OnDrawerClosed(drawerView);
            }
        }

        public override void OnDrawerSlide(AppView.View drawerView, float slideOffset)
        {
            if (null != DrawerSlide)
                DrawerSlide(this, new MainMenuLeftDrawerEventArgs
                {
                    DrawerView = drawerView,
                    SlideOffset = slideOffset
                });

            int drawerType = (int)drawerView.Tag;

            if (drawerType == 0)
            {
                base.OnDrawerSlide(drawerView, slideOffset);
            }
        }

        public override void OnDrawerStateChanged(int newState)
        {
            if (null != DrawerStateChanged)
                DrawerStateChanged(this, new MainMenuLeftDrawerEventArgs
                {
                    NewState = newState
                });
            base.OnDrawerStateChanged(newState);
        }
    }
}
