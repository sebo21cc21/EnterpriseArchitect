///////////////////////////////////////////////////////////
//  FormularzA_ZR_WyślijPowiadomienieORezerwacji.cs
//  Implementation of the Class FormularzA_ZR_WyślijPowiadomienieORezerwacji
//  Generated by Enterprise Architect
//  Created on:      28-mar-2025 21:51:42
//  Original author: bedna
///////////////////////////////////////////////////////////

using System;
using System.Collections.Generic;
using System.Text;
using System.IO;



using Dane;
namespace Interfejsy {
	/// <summary>
	/// Administrator informuje użytkownika o zatwierdzeniu jego rezerwacji.
	/// </summary>
	public class FormularzA_ZR_WyślijPowiadomienieORezerwacji {

		public FormularzA_ZR_WyślijPowiadomienieORezerwacji(){

		}

		~FormularzA_ZR_WyślijPowiadomienieORezerwacji(){

		}

		public Ster_ZR_WyślijPowiadomienieORezerwacji Ster_ZR_WyślijPowiadomienieORezerwacji{
			get{
				return m_Ster_ZR_WyślijPowiadomienieORezerwacji;
			}
			set{
				m_Ster_ZR_WyślijPowiadomienieORezerwacji = value;
			}
		}

		/// 
		/// <param name="Rezerwacja"></param>
		public void WyslijPowiadomienieORezerwacji(Rezerwacja Rezerwacja){

		}

	}//end FormularzA_ZR_WyślijPowiadomienieORezerwacji

}//end namespace Interfejsy