using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

namespace Aluwa
{
	// NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in code, svc and config file together.
	// NOTE: In order to launch WCF Test Client for testing this service, please select Service1.svc or Service1.svc.cs at the Solution Explorer and start debugging.
	public class Service1 : IService1
	{
		AluwaClassesDataContext adb = new AluwaClassesDataContext();
		//register function for the backend 
		public bool Register(User user)
		{
			try
			{
				adb.Users.InsertOnSubmit(user);
				adb.SubmitChanges(); //if add is successful then retruns true
				return true;
			}
			catch (Exception ex) //if not thorws exception 
			{
				Console.WriteLine(ex.Message);
				ex.GetBaseException();
				return false;
			}
		}

		//login function for the backend 
		public User Login(string email, string password)
		{
			AluwaClassesDataContext adb = new AluwaClassesDataContext();

			var cu = (from c in adb.Users
					  where c.Email == email && c.Password == password
					  select c).FirstOrDefault(); //matches the email and password entered by the user to see if customers exists in database 

			//if the customer does exist, then return true
			if (cu != null)
			{
				return cu;
			}
			else //if doesn't exist returns false 
			{
				return null;
			}
		}
		//get customer id
		public int getCustomerId()
		{
			int id = (from c in adb.Users
					  select c.User_Id).FirstOrDefault();
			return id;
		}

		//get user by id
		public User getCustomer(int id)
		{
			var customer = (from c in adb.Users
							where c.User_Id == id
							select c).FirstOrDefault();
			return customer;
		}

		// Method to retrieve user type by user email
		public string GetUserType(string email)
		{
			using (adb)
			{
				var user = adb.Users
								  .Where(u => u.Email == email)
								  .Select(u => u.UserRole)
								  .FirstOrDefault();

				// If user is found, return the UserType, otherwise return "Unknown" or handle accordingly
				return user ?? "Unknown";
			}
		}
		public List<Product> GetProductsById(int[] productIds)
		{
			// Fetch products where the ID is in the array of product IDs
			var pr = from product in adb.Products
					 where productIds.Contains(product.Prod_Id)
					 select product;

			// Check if products were found
			if (pr != null && pr.Any())
			{
				// Create a list to store the product details
				List<Product> PrList = new List<Product>();

				// Iterate through the fetched products and add them to the list
				foreach (Product p in pr)
				{
					Product prod = new Product
					{
						Prod_Name = p.Prod_Name,
						Prod_Description = p.Prod_Description,
						Price = p.Price,
						ProductImage = p.ProductImage
					};
					PrList.Add(prod);
				}

				return PrList;
			}
			else
			{
				// If no products were found, return an empty list instead of null
				return new List<Product>();
			}
		}
		//need to get category
		public List<Product> getProductByCategory(string category)
		{
			var prods = (from p in adb.Products
						 where p.Category == category
						 select p).ToList();

			return prods;
		}

		//get products
		public List<Product> getProducts()
		{
			dynamic pr = (from product in adb.Products
						  select product).DefaultIfEmpty();

			if (pr != null)
			{
				List<Product> PrList = new List<Product>();

				foreach (Product p in pr)
				{
					Product prod = new Product
					{
						Prod_Id = p.Prod_Id,
						Prod_Name = p.Prod_Name,
						ProductImage = p.ProductImage,
						Price = p.Price,
						Prod_Description = p.Prod_Description,

					};
					PrList.Add(prod);
				}
				return PrList;
			}

			else
			{
				return null;

			}

		}

		//get products by id
		public Product getproductById(int id)
		{
			var tempprod = (from p in adb.Products
							where p.Prod_Id.Equals(id)
							select p).FirstOrDefault();

			if (tempprod != null)
			{
				var objprod = new Product();
				objprod.Prod_Name = tempprod.Prod_Name;
				objprod.Prod_Description = tempprod.Prod_Description;
				objprod.ProductImage = tempprod.ProductImage;
				objprod.Price = tempprod.Price;
				return objprod;
			}
			else
			{
				return null;
			}
		}
		//admin management methods
		public bool addProduct(string name, string category, string description, double price, int stock, string image)
		{


			var p = new Product
			{
				Prod_Name = name,
				Category = category,
				Prod_Description = description,
				Price = (decimal)price,
				Stock = stock,
				ProductImage = image
			};

			if (!checkProduct(p.Prod_Name))
			{
				adb.Products.InsertOnSubmit(p);
				try
				{
					adb.SubmitChanges();
					return true;
				}
				catch (Exception e)
				{
					return false;
				}
			}
			else
			{
				return false;
			}
		}

		public bool checkProduct(string name)
		{
			return adb.Products.Any(b => b.Prod_Name == name);
		}

		public bool DeleteProd(int P_id)
		{
			if (P_id > 0)
			{
				Product productToDelete = null;
				foreach (Product p in adb.Products)
				{
					if (p.Prod_Id.Equals(P_id))
					{
						productToDelete = p;
						break;
					}
				}

				if (productToDelete != null)
				{
					adb.Products.DeleteOnSubmit(productToDelete);
					try
					{
						adb.SubmitChanges();
						return true; // Deleted succesfully
					}
					catch (Exception ex)
					{
						ex.GetBaseException();
						return false; //product could not  be deleted
					}
				}

				else
				{
					return false; // Product not in database
				}
			}

			else
			{
				return false; // Invalid product ID entered
			}
		}
		public bool DeleteUser(int u_id)
		{
			if (u_id > 0)
			{
				User userToDelete = null;
				foreach (User u in adb.Users)
				{
					if (u.User_Id.Equals(u_id))
					{
						userToDelete = u;
						break;
					}
				}

				if (userToDelete != null)
				{
					adb.Users.DeleteOnSubmit(userToDelete);
					try
					{
						adb.SubmitChanges();
						return true; // Deleted succesfully
					}
					catch (Exception ex)
					{
						ex.GetBaseException();
						return false; //product could not  be deleted
					}
				}

				else
				{
					return false; // Product not in database
				}
			}

			else
			{
				return false; // Invalid product ID entered
			}
		}
		public bool editProduct(string name, string category, string description, double price, int stock, string image)
		{


			var p = new Product
			{
				Prod_Name = name,
				Category = category,
				Prod_Description = description,
				Price = (decimal)price,
				Stock = stock,
				ProductImage = image
			};

			if (p != null)
			{

				try
				{
					adb.SubmitChanges();
					return true;
				}
				catch (Exception e)
				{
					return false;
				}
			}
			else
			{
				return false;
			}
		}
		//get cart
		public TempCart GetCart()
		{
			var cart = (from c in adb.Carts
						select new TempCart
						{
							TempCartCust_Id = c.User_Id,
							TempCart_Id = c.Cart_Id,
							TempCart_Total = c.Cart_Total,
							TempCartProd_Total = c.CartProduct_Total
						}).FirstOrDefault();
			return cart;
		}


		//get product by id
		public TempProd GetProductByID(int id)
		{
			var prod = (from p in adb.Products
						where p.Prod_Id == id
						select new TempProd
						{
							Product_Id = p.Prod_Id,
							Product_Name = p.Prod_Name,
							Product_Description = p.Prod_Description,
							Product_Environment = p.Environment,
							Product_Maintenance = p.Maintenace,
							Product_Province = p.Province,
							Product_Price = p.Price,
							Product_Image = p.ProductImage,
							Product_Stock = p.Stock,
							Product_Category = p.Category
						}).FirstOrDefault();
			return prod;
		}

		//get product Id
		public int GetProductId()
		{
			int id = (from p in adb.Products
					  select p.Prod_Id).FirstOrDefault();
			return id;
		}

		//get cart id
		public int GetCartId()
		{
			int id = (from c in adb.Carts
					  select c.Cart_Id).FirstOrDefault();
			return id;
		}

		//getting the order id
		public int GetOrderId()
		{
			int id = (from o in adb.Orders
					  select o.Order_Id).FirstOrDefault();
			return id;
		}

		//get cart_product id
		public int GetCartProductId()
        {
			int id = (from cp in adb.Cart_Products
					  select cp.CartProd_Id).FirstOrDefault();
			return id;
        }
		public List<TempCartProd> GetCartProds(int custId)
		{
			// Get customer cart
			var custCart = (from cc in adb.Carts
							where cc.User_Id == custId
							select cc).FirstOrDefault();

			// Check if the cart exists for the customer
			if (custCart == null)
			{
				// Return an empty list or handle the case where the cart doesn't exist
				return new List<TempCartProd>();
			}

			// Get the products in the cart
			var cartProds = (from cp in adb.Cart_Products
							 join p in adb.Products on cp.Prod_Id equals p.Prod_Id
							 where cp.Cart_Id == custCart.Cart_Id
							 select new TempCartProd
							 {
								 CartProduct_Id = p.Prod_Id,
								 CartProduct_Quantity = cp.CartProd_Quantity,
								 CartProduct_Name = p.Prod_Name,
								 CartProduct_Price = p.Price,
								 CartProduct_Image = p.ProductImage
							 }).ToList();

			return cartProds;
		}

		//add to cart button
		public void AddToCart(int custId, int prodId)
		{
			//get user cart
			var custCart = (from c in adb.Carts
							where c.User_Id == custId
							select c).FirstOrDefault();

			if (custCart == null)
			{
				//create new cart if user doesn't have one
				custCart = new Cart
				{
					User_Id = custId,
					CartProduct_Total = 0,
					Cart_Total = 0
				};
				adb.Carts.InsertOnSubmit(custCart);
				adb.SubmitChanges(); //save to get cart id
			};

			//check if product is in cart
			var cartProd = (from p in adb.Cart_Products
							where p.Cart_Id == custCart.Cart_Id && p.Prod_Id == prodId //changed p.CartProd_Id to p.Prod_id
							select p).FirstOrDefault();

			if (cartProd != null)
			{
				//increase quantity if prod is in cart already
				cartProd.CartProd_Quantity++;
			}
			else
			{
				//else just add prod
				cartProd = new Cart_Product
				{
					Cart_Id = custCart.Cart_Id,
					Prod_Id = prodId,
					CartProd_Quantity = 1 //set quantity to 1 initially
				};
				adb.Cart_Products.InsertOnSubmit(cartProd);
			}
			//update cart total and product total
			UpdateCartTotals(custCart.Cart_Id);
			adb.SubmitChanges();
		}

		//increase product quantity in cart
		public void increaseQuantity(int cartProdId)
		{
			var cartProd = (from cp in adb.Cart_Products
							where cp.CartProd_Id == cartProdId
							select cp).FirstOrDefault();
			if (cartProd != null)
			{
				cartProd.CartProd_Quantity++;
				adb.SubmitChanges();

				//update cart total 
				UpdateCartTotals(cartProd.Cart_Id);
			}
		}

		//delete products from cart
		public void DeleteProduct(int cartProdId)
		{
			var cartProdEntity = adb.Cart_Products.FirstOrDefault(cp => cp.CartProd_Id == cartProdId);

			// Check if the product exists
			if (cartProdEntity == null)
			{
				// Log or handle the case where the product doesn't exist in the cart

				Console.WriteLine($"No product found with CartProd_Id: {cartProdId}");
				return; // Exit the function if no matching product is found
			}

			adb.Cart_Products.DeleteOnSubmit(cartProdEntity);

			try
			{
				// Commit the deletion
				adb.SubmitChanges();
			}
			catch (Exception ex)
			{
				// Log or handle the exception
				Console.WriteLine($"Error deleting product with CartProd_Id: {cartProdId}. Exception: {ex.Message}");
			}

			// Update cart totals based on the Cart_Id
			UpdateCartTotals(cartProdEntity.Cart_Id);
		}
		//updating cart total (helper method)
		public void UpdateCartTotals(int cartId)
		{
			var cart = (from c in adb.Carts
						where c.Cart_Id == cartId
						select c).FirstOrDefault();

			if (cart == null)
			{
				return;
			}

			//get products from cart
			var cartProds = (from cp in adb.Cart_Products
							 join p in adb.Products on cp.Prod_Id equals p.Prod_Id
							 where cp.Cart_Id == cartId
							 select new
							 {
								 cp.CartProd_Quantity,
								 p.Price
							 }).ToList();

			//calculating totals
			decimal cartTotal = cartProds.Sum(cp => cp.Price * cp.CartProd_Quantity); //total price
			int prodTotal = cartProds.Sum(cp => cp.CartProd_Quantity); //total no of products

			//update cart
			cart.Cart_Total = cartTotal;
			cart.CartProduct_Total = prodTotal;

			//save changes
			adb.SubmitChanges();
		}

		//get total products in cart
		public int getTotalProdInCart(int custId)
		{
			var cartProds = GetCartProds(custId);
			return cartProds.Sum(cp => cp.CartProduct_Quantity); //returns total products in cart
		}
		//get order by id
		public List<TempOrder> GetOrder(int id)
		{
			var order = (from o in adb.Orders
						 where o.Order_Id == id
						 select new TempOrder
						 {
							 TempOrder_Id = o.Order_Id,
							 TempOrder_Date = o.Order_Date,
							 TempOrder_Address = o.Order_Address,
							 TempOrder_Total = o.Order_Total,
							 TempOrderCust_Id = o.User_Id
						 }).ToList();

			return order;
		}

		//get order details
		public List<TempOrderProd> GetOrderProds(int id)
		{
			var orderProds = (from op in adb.Order_Products
							  where op.OrdProd_Id == id
							  select new TempOrderProd
							  {
								  TempOrdProd = op.OrdProd_Id,
								  TempOrdProd_Quantity = op.Quantity,
								  TempOrdProdPurchase_Price = op.ProdPurchase_Price,
								  TempOrdProd_OrderId = op.Order_Id,
								  TempOrdProd_ProdId = op.Prod_Id
							  }).ToList();
			return orderProds;
		}
		//check out purchasing
		public bool checkOut(int custId, string address)
		{
			var custCart = (from cc in adb.Carts
							where cc.User_Id == custId
							select cc).FirstOrDefault();

			//check if customer has cart
			if (custCart == null)
			{
				return false;
			}

			var cartProds = (from cp in adb.Cart_Products
							 join p in adb.Products on cp.CartProd_Id equals p.Prod_Id
							 where cp.Cart_Id == custCart.Cart_Id
							 select new
							 {
								 ProductId = p.Prod_Id,
								 ProductName = p.Prod_Name,
								 ProductPrice = p.Price,
								 Quantity = cp.CartProd_Quantity
							 }).ToList();

			//.Any deteremines whether cartProds contains any elements
			if (!cartProds.Any())
			{
				return false; //no products in cart
			}

			//Calculate Total
			decimal subtotal = cartProds.Sum(cp => cp.Quantity * cp.ProductPrice);
			decimal vat = 0.15m; //15% vat
			decimal vatAdded = subtotal * vat;
			decimal total = subtotal + vatAdded;

			//create order
			Order order = new Order
			{
				User_Id = custId,
				Order_Date = DateTime.Now, //gets current date
				Order_Total = total,
				Order_Address = address
			};
			adb.Orders.InsertOnSubmit(order);

			//create details for each cart
			foreach (var cartProd in cartProds)
			{
				Order_Product op = new Order_Product
				{
					Order_Id = order.Order_Id,
					Prod_Id = cartProd.ProductId,
					Quantity = cartProd.Quantity,
					ProdPurchase_Price = cartProd.ProductPrice
				};
				adb.Order_Products.InsertOnSubmit(op);
			}

			//clear cart after purchase
			var removeCartProd = adb.Cart_Products
								.Where(cp => cp.Cart_Id == custCart.Cart_Id).ToList();

			//delete each product
			foreach (var prod in removeCartProd)
			{
				adb.Cart_Products.DeleteOnSubmit(prod);
			}

			adb.SubmitChanges();
			return true;
		}
	}
}




