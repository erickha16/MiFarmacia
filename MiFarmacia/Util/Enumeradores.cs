using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;

namespace Rutas.Util
{
    public class Enumeradores
    {
        public enum Horarios
        {
            [Description("09:00")] matutino1, 
            [Description("10:00")] matutino2,
            [Description("11:00")] matutino3,
            [Description("12:00")] matutino4,
            [Description("13:00")] vespertino1,
            [Description("14:00")] vespertino2,
            [Description("14:00")] vespertino3,
            [Description("16:00")] vespertino4,
            [Description("17:00")] vespertino5,
            [Description("18:00")] vespertino6,
            [Description("19:00")] vespertino7,
            [Description("20:00")] vespertino8,
        }

    }
}