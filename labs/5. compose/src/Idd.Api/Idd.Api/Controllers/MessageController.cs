using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Idd.Api.Data;
using Idd.Api.Domain;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;

namespace Idd.Api.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class MessageController : ControllerBase
    {
        private readonly ILogger<MessageController> _logger;
        private readonly MessageContext _context;

        public MessageController(ILogger<MessageController> logger, MessageContext context)
        {
            _logger = logger;
            _context = context;
        }

        [HttpGet]
        public IEnumerable<Message> Get()
        {
            var messages = new List<Message> 
            { 
                new Message{ MessageId = 1, MessageBody = "First Message"},
                new Message{ MessageId = 2, MessageBody = "Second Message"},
                new Message{ MessageId = 3, MessageBody = "Third Message"},
            };
            return messages;
            //return _context.Messages;
        }
    }
}
