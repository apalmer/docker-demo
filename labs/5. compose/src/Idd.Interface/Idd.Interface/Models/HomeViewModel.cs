using Idd.Interface.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Idd.Interface.Models
{
    public class HomeViewModel
    {
        public IEnumerable<Message> Messages { get; set; }
    }
}
