using Dapper;
using Domain.Models;
using Infrastructure.DataContex;

namespace Infrastructure.Services;

public class WarehouceService
{
     private readonly DapperContext _context;
    public WarehouceService()
    {
        _context = new DapperContext();
    }

    public void AddProduct(Warehouse warehouse)
    {
        var sql = "insert into warehouse (name,address) values (@name,@address)";
        _context.Connection().Execute(sql , warehouse);
    }
}
