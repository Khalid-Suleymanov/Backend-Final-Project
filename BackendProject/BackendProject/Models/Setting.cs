using System.ComponentModel.DataAnnotations;

namespace BackendProject.Models
{
    public class Setting
    {
        [Key]
        public string Key { get; set; }
        [Required]
        [MaxLength(100)]
        public string Value { get; set; }
    }
}
