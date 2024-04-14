namespace Alghorithms.Models
{
    public class Content
    {
        public int Id { get; set; }
        public int ContentTypeId { get; set; }
        public string ContentTypeName { get; set; }
        public int TopicId { get; set; }
        public string Data { get; set; }
        public string? Params { get; set; }
        public int Order { get; set; }
    }
}
