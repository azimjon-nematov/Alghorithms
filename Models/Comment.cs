namespace Alghorithms.Models
{
    public class Comment
    {
        public int Id { get; set; }
        public int UserId { get; set; }
        public string UserName { get; set; }
        public int TopicId { get; set; }
        public string Text { get; set; }
        public DateTime Date { get; set; }
        public int ParentId { get; set; }

    }
}
