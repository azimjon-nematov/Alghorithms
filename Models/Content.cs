namespace Alghorithms.Models
{
    public class Content
    {
        int Id { get; set; }
        int ContentTypeId { get; set; }
        string ContentTypeName { get; set; }
        int TopicId { get; set; }
        string Data { get; set; }
        string? Params { get; set; }
        int Order { get; set; }
    }
}
