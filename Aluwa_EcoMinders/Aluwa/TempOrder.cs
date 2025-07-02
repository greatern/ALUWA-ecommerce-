using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Runtime.Serialization;

namespace Aluwa
{
    [DataContract]
    public class TempOrder
    {
        [DataMember]
        public int TempOrder_Id { get; set; }

        [DataMember]
        public DateTime? TempOrder_Date { get; set; }

        [DataMember]
        public decimal TempOrder_Total { get; set; }

        [DataMember]
        public string TempOrder_Address { get; set; }

        [DataMember]
        public int TempOrderCust_Id { get; set; }
    }
}