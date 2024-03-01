namespace Domain.Models;

public class Moving
{
    public int Id { get; set; }
    public int ProductId { get; set; }
    public string FromWarehouse { get; set; }
    public string ToWarehouse { get; set; }
    public int Count { get; set; }
    public DateTime DateofMoving { get; set; }
}
