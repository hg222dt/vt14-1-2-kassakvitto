using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Labb_1_2_Kassakvitto.Model
{
    public class Receipt
    {
        private double _subtotal;

        public double DiscountRate { get; set; }

        public double MoneyOff { get; set; }

        public double Subtotal
        {
            get
            {
                return _subtotal;
            }

            set
            {
                if (value > 0)
                {
                    _subtotal = value;
                }
                else
                {
                    //kasta undantag?
                }
            }
        }

        public double Total { get; set; }

        private void Calculate(double subtotal)
        {
            if (Subtotal <= 499)
            {
                DiscountRate = 0;
            }
            else if (Subtotal >= 500 || _subtotal <= 999)
            {
                DiscountRate = 5;
            }
            else if (Subtotal >= 1000 || _subtotal <= 4999)
            {
                DiscountRate = 10;
            }
            else if (Subtotal >= 5000)
            {
                DiscountRate = 15;
            }

            MoneyOff = Subtotal * (DiscountRate / 100);
            Total = Subtotal - MoneyOff;
        }

        public Receipt(double subtotal)
        {
            Subtotal = subtotal;
            Calculate(Subtotal);
        }
    }
}