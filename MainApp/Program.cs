using System.Runtime.InteropServices;
using Domain;
using Domain.Models;
using Infrastructure;
using Infrastructure.Services;


var productservice = new ProductService();

foreach (var item in productservice.GetProductbyWarehouse())
{
    System.Console.WriteLine("Id : " + item.Id);
    System.Console.WriteLine("Name : " + item.Name);
    System.Console.WriteLine("Count : " + item.Count);
}
