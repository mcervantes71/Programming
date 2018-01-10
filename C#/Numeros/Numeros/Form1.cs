﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Numeros
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            String mensaje = "";
            int num = Convert.ToInt32(comboBox1.SelectedItem);

            for(int i = 1; i <= 10; i++)
            {
                mensaje += num + " x " + i + " = " + (i * num) + "\n";
            }

            MessageBox.Show(mensaje, "Tablas de Multiplicar");
        }
    }
}
