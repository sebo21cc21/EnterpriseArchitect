///////////////////////////////////////////////////////////
//  FormularzU_ZR_AnulujRezerwacje.cs
//  Implementation of the Class FormularzU_ZR_AnulujRezerwacje
//  Generated by Enterprise Architect
//  Created on:      28-mar-2025 21:53:01
//  Original author: bedna
///////////////////////////////////////////////////////////

using System;
using System.Collections.Generic;
using System.Text;
using System.IO;



using Dane;
namespace Interfejsy {
	/// <summary>
	/// U�ytkownik anuluje swoj� rezerwacj�, je�li nie zosta�a jeszcze zrealizowana.
	/// </summary>
	public class FormularzU_ZR_AnulujRezerwacje {

		private Dane.Rezerwacja rezerwacja;

		public FormularzU_ZR_AnulujRezerwacje(){

		}

		~FormularzU_ZR_AnulujRezerwacje(){

		}

		/// 
		/// <param name="Rezerwacja"></param>
		public void AnulujRezerwacje(Rezerwacja Rezerwacja){

		}

		public Ster_ZR_AnulujRezerwacj� Ster_ZR_AnulujRezerwacj�{
			get{
				return m_Ster_ZR_AnulujRezerwacj�;
			}
			set{
				m_Ster_ZR_AnulujRezerwacj� = value;
			}
		}

		public void WyswietlPowiadomienie(){

		}

	}//end FormularzU_ZR_AnulujRezerwacje

}//end namespace Interfejsy