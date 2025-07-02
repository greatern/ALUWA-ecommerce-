using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Runtime.Serialization;

namespace Aluwa
{
    [DataContract]
    public class TempCartProd
    {
        [DataMember]
        public int CartProduct_Id { get; set; }

        [DataMember]
        public int CartProduct_Quantity { get; set; }

        [DataMember]
        public string CartProduct_Name { get; set; }

        [DataMember]
        public decimal CartProduct_Price { get; set; }

        [DataMember]
        public string CartProduct_Image { get; set; }
    }
}