///////////////////////////////////////////////////////////
//  FormularzA_ZR_EdytujRezerwacje.cs
//  Implementation of the Class FormularzA_ZR_EdytujRezerwacje
//  Generated by Enterprise Architect
//  Created on:      28-mar-2025 21:51:27
//  Original author: bedna
///////////////////////////////////////////////////////////

using System;
using System.Collections.Generic;
using System.Text;
using System.IO;



using Dane;
namespace Interfejsy {
	/// <summary>
	/// Administrator edytuje szczeg�y istniej�cej rezerwacji, np. termin, zasoby lub
	/// przypisanego u�ytkownika.
	/// </summary>
	public class FormularzA_ZR_EdytujRezerwacje {

		private Dane.Rezerwacja rezerwacja;

		public FormularzA_ZR_EdytujRezerwacje(){

		}

		~FormularzA_ZR_EdytujRezerwacje(){

		}

		/// 
		/// <param name="rezerwacja"></param>
		public void EdytujRezerwacje(Rezerwacja rezerwacja){

		}

		public Ster_ZR_EdytujRezerwacj� Ster_ZR_EdytujRezerwacj�{
			get{
				return m_Ster_ZR_EdytujRezerwacj�;
			}
			set{
				m_Ster_ZR_EdytujRezerwacj� = value;
			}
		}

		public void WyswietlPowiadomienie(){

		}

	}//end FormularzA_ZR_EdytujRezerwacje

}//end namespace Interfejsy