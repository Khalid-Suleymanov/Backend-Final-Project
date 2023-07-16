using System.ComponentModel.DataAnnotations;

namespace BackendProject.ViewModels
{
    public class ContactVM
    {
        public string AppUserId { get; set; }
        [Required]
        [MaxLength(35)]
        public string FullName { get; set; }
        [Required]
        [MaxLength(100)]
        [DataType(DataType.EmailAddress)]
        public string Email { get; set; }
        [Required]
        [MaxLength(15)]
        public string Phone { get; set; }
        [Required]
        [MaxLength(150)]
        public string Subject { get; set; }
        [MaxLength(250)]
        public string Note { get; set; }
    }
}
