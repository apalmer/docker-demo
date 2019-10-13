using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Idd.Interface.Models;
using Idd.Interface.DTO;
using Newtonsoft.Json;
using System.Net.Http;
using Microsoft.Extensions.Options;
using Idd.Interface.Configuration;

namespace Idd.Interface.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly IOptions<IddConfiguration> _iddConfiguration;

        public HomeController(ILogger<HomeController> logger, IOptions<IddConfiguration> iddConfiguration)
        {
            _logger = logger;
            _iddConfiguration = iddConfiguration;
        }

        public async Task<IActionResult> Index()
        {
            var model = new HomeViewModel
            {
                Messages = await GetMessages()
            };

            return View(model);
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }

        private async Task<IEnumerable<Message>> GetMessages()
        {
            List<Message> messages;
            using (var httpClient = new HttpClient())
            {
                var messageApiUrl = _iddConfiguration.Value.MessageApiUrl;
                using (var response = await httpClient.GetAsync(messageApiUrl))
                {
                    string apiResponse = await response.Content.ReadAsStringAsync();
                    messages = JsonConvert.DeserializeObject<List<Message>>(apiResponse);
                }
            }

            return messages;
        }
    }
}
