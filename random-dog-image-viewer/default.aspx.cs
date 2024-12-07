using System;
using System.Net.Http;
using System.Threading.Tasks;
using Newtonsoft.Json;

namespace random_dog_image_viewer
{
    public partial class _default : System.Web.UI.Page
    {
        protected async void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                await GetRandomDogImageUrl();
            }
        }

        protected async void btnLoad_Click(object sender, EventArgs e)
        {
            string imageUrl = await GetRandomDogImageUrl();
            imgDog.ImageUrl = imageUrl;
        }

        private async Task<string> GetRandomDogImageUrl()
        {
            using (HttpClient client = new HttpClient())
            {
                HttpResponseMessage response = await client.GetAsync("https://dog.ceo/api/breeds/image/random");
                if (response.IsSuccessStatusCode)
                {
                    // SUCCESS
                    dynamic jsonResponse = await response.Content.ReadAsAsync<dynamic>();
                    return jsonResponse.message;
                }
                else
                {
                    // ERROR
                    lblResult.Text = "Hubo un error.";
                    return "~/Assets/placeholder.jpg";
                }
            }
        }

        // Clase que representa la respuesta de la API de Dog CEO
        public class DogResponse
        {
            [JsonProperty("message")]
            public string Message { get; set; }

            [JsonProperty("status")]
            public string Status { get; set; }
        }

    }
}
