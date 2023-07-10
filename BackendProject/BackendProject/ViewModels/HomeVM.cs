using BackendProject.Models;

namespace BackendProject.ViewModels
{
    public class HomeVM
    {
        public List<Slider> Sliders { get; set; }

        public List<Feature> Features { get; set; }

        public List<Product> Products { get; set; }

        public List<Product> NewProducts { get; set; }

        public List<FourBrand> FourBrands { get; set; }

    }
}
