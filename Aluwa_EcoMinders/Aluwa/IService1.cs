using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

namespace Aluwa
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IService1" in both code and config file together.
    [ServiceContract]
    public interface IService1
    {

        [OperationContract]
        User Login(string email, string password);

        [OperationContract]
        bool Register(User user);
        [OperationContract]
        int getCustomerId();

        [OperationContract]
        User getCustomer(int id);
        [OperationContract]
        string GetUserType(string email);
        [OperationContract]
        List<Product> getProductByCategory(string category);

        [OperationContract]
        Product getproductById(int id);
        [OperationContract]
        List<Product> getProducts();
        [OperationContract]
        List<Product> GetProductsById(int[] productIds);
        [OperationContract]
        bool DeleteProd(int P_id);
        [OperationContract]
        bool DeleteUser(int u_id);
        [OperationContract]
        bool addProduct(string name, string category, string description,double price, int stock, string image);
        [OperationContract]
        bool checkProduct(string name);
        [OperationContract]
        bool editProduct(string name, string category, string description, double price, int stock, string image);
        [OperationContract]
        int getTotalProdInCart(int custId);
        [OperationContract]
        void UpdateCartTotals(int cartId);
        [OperationContract]
        void DeleteProduct(int cartProdId);
        [OperationContract]
        void increaseQuantity(int cartProdId);
        [OperationContract]
        void AddToCart(int custId, int prodId);
        [OperationContract]
        List<TempCartProd> GetCartProds(int custId);
        [OperationContract]
        int GetProductId();
        [OperationContract]
        TempProd GetProductByID(int id);
        [OperationContract]
        TempCart GetCart();
        [OperationContract]
        int GetOrderId();
        [OperationContract]
        List<TempOrderProd> GetOrderProds(int id);
        [OperationContract]
        bool checkOut(int custId, string address);

        [OperationContract]
        int GetCartProductId();

    }
}
