namespace Alghorithms.Models
{
    public class Content
    {
        public int Id { get; set; }
        public int ContentTypeId { get; set; }
        public string ContentTypeName { get; set; }
        public int TopicId { get; set; }
        public int? CodeListId { get; set; }
        public string Data { get; set; }
        public string? Params { get; set; }
        public int Order { get; set; }
        public List<CodeInLang> codes { get; set; } = new List<CodeInLang>();
    }

    public class CodeInLang
    {
        public int Id { get; set; }
        public int CodeListId { get; set; }
        public int LanguageId { get; set; }
        public string LanguageName { get; set; } = string.Empty;
        public string Code { get; set; } = string.Empty;
    }
}
