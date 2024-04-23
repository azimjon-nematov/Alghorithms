namespace Alghorithms.Models
{
    public class Topic
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public bool HasChildren { get; set; }
        public int? ParentId { get; set; }
        public int Order { get; set; }
        public List<Topic>? children { get; set; }

    }
}
