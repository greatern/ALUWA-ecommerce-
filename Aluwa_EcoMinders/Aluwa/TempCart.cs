using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Runtime.Serialization;

namespace Aluwa
{
    [DataContract]
    public class TempCart
    {
        [DataMember]
        public int TempCart_Id { get; set; }

        [DataMember]
        public int TempCartCust_Id { get; set; }

        [DataMember]
        public decimal? TempCart_Total { get; set; } //? sets to null to avoid

        [DataMember]
        public int? TempCartProd_Total { get; set; }
    }
}