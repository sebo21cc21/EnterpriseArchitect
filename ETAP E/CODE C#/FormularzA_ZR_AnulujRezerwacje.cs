///////////////////////////////////////////////////////////
//  FormularzA_ZR_AnulujRezerwacje.cs
//  Implementation of the Class FormularzA_ZR_AnulujRezerwacje
//  Generated by Enterprise Architect
//  Created on:      28-mar-2025 21:51:24
//  Original author: bedna
///////////////////////////////////////////////////////////

using System;
using System.Collections.Generic;
using System.Text;
using System.IO;



using Dane;
namespace Interfejsy {
	/// <summary>
	/// Administrator mo�e anulowa� rezerwacj� u�ytkownika, informuj�c go o przyczynie
	/// i ewentualnych konsekwencjach.
	/// </summary>
	public class FormularzA_ZR_AnulujRezerwacje {

		private Dane.Rezerwacja rezerwacja;

		public FormularzA_ZR_AnulujRezerwacje(){

		}

		~FormularzA_ZR_AnulujRezerwacje(){

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

	}//end FormularzA_ZR_AnulujRezerwacje

}//end namespace Interfejsy