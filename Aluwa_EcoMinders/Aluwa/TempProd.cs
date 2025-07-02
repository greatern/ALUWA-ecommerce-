using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Runtime.Serialization;

namespace Aluwa
{
    [DataContract]
    public class TempProd
    {
        [DataMember]
        public int Product_Id;

        [DataMember]
        public string Product_Name;

        [DataMember]
        public string Product_Description;

        [DataMember]
        public decimal Product_Price;

        [DataMember]
        public int Product_Stock;

        [DataMember]
        public string Product_Image;

        [DataMember]
        public string Product_Maintenance;

        [DataMember]
        public string Product_Environment;

        [DataMember]
        public string Product_Province;

        [DataMember]
        public string Product_Category;
    }
}