using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Runtime.Serialization;

namespace Aluwa
{
    [DataContract]
    public class TempOrderProd
    {
        [DataMember]
        public int TempOrdProd { get; set; }

        [DataMember]
        public int TempOrdProd_Quantity { get; set; }

        [DataMember]
        public decimal TempOrdProdPurchase_Price { get; set; }

        [DataMember]
        public int TempOrdProd_OrderId { get; set; }

        [DataMember]
        public int TempOrdProd_ProdId { get; set; }
    }
}