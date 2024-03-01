using System.Runtime;
using Dapper;
using Domain.Models;
using Infrastructure.DataContex;

namespace Infrastructure.Services;

public class ProductService
{
    private readonly DapperContext _context;
    public ProductService()
    {
        _context = new DapperContext();
    }

    public void AddProduct(Products products)
    {
        var sql = "insert into Products (name,count,warehouseid) values (@name,@count,@warehouseid)";
        _context.Connection().Execute(sql , products);
    }

    public List<Products> GetProductbyWarehouse()
    {
        var sql = @"select w.Id,w.Name,w.Address,p.Name as ProductName,p.Count 
                  from Products as p 
                  join Warehouse as w on w.Id = p.WarehouseId";
        var cat = _context.Connection().Query<Products>(sql).ToList();
        return cat;
    }
    
    

}
