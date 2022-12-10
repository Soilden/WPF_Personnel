using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WPF_Personnel
{
    class worker
    {
        public int id { get; set; }
        public string identificator { get; set; }
        public string name { get; set; }
        public string last_name { get; set; }
        public string patronymic { get; set; }
        public string date_birth { get; set; }
        public string number_phone { get; set; }
        public string group { get; set; }

        public worker() { }

        public worker(string identificator, string name, string last_name, string patronymic, string date_birth, string number_phone, string group)
        {
            this.identificator = identificator;
            this.name = name;
            this.last_name = last_name;
            this.patronymic = patronymic;
            this.date_birth = date_birth;
            this.number_phone = number_phone;
            this.group = group;
        }
    }
}
