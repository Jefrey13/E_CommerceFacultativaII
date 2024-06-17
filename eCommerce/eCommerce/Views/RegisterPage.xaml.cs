using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace eCommerce.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class RegisterPage : ContentPage
    {
        public RegisterPage()
        {
            InitializeComponent();
        }

        //Metodos de Ivan --> Logica Register
        /*private void validateRegister(object sender, EventArgs e)
        {
            string message = "";
            string user = entryUsername.Text;
            string email = entryEmail.Text;
            string confirmEmail = entryConfirmEmail.Text;
            string password = entryPassword.Text;
            string confirmPassword = entryConfirmPassword.Text;
            string country = entryCountry.Text;
            string province = entryProvince.Text;


            if (string.IsNullOrEmpty(user))
            {
                message += "Username \r\n";
            }
            if (string.IsNullOrEmpty(email))
            {
                message += "Email \r\n";
            }
            if (string.IsNullOrEmpty(confirmEmail))
            {
                message += "Confirm email \r\n";
            }
            if (string.IsNullOrEmpty(country))
            {
                message += "Country \r\n";
            }
            if (string.IsNullOrEmpty(province))
            {
                message += "Province \r\n";
            }

            DisplayAlert("Alert", "Entries missing: \r\n" + message, "OK");

        }

        private void clearEntries(object sender, EventArgs e)
        {
            entryUsername.Text = "";
            entryEmail.Text = "";
            entryConfirmEmail.Text = "";
            entryCountry.Text = "";
            entryProvince.Text = "";
        }*/
    }
}
