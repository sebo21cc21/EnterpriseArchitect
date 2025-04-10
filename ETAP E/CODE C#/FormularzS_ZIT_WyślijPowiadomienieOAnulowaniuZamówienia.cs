///////////////////////////////////////////////////////////
//  FormularzS_ZIT_WyślijPowiadomienieOAnulowaniuZamówienia.cs
//  Implementation of the Class FormularzS_ZIT_WyślijPowiadomienieOAnulowaniuZamówienia
//  Generated by Enterprise Architect
//  Created on:      28-mar-2025 21:52:35
//  Original author: bedna
///////////////////////////////////////////////////////////

using System;
using System.Collections.Generic;
using System.Text;
using System.IO;



using Dane;
namespace Interfejsy {
	/// <summary>
	/// Administrator wysyła powiadomienie do użytkownika o anulowaniu jego zamówienia
	/// sprzętu IT.
	/// </summary>
	public class FormularzS_ZIT_WyślijPowiadomienieOAnulowaniuZamówienia {

		private Dane.Administrator odbiorca;
		private string treść;
		private string tytuł;
		private Dane.Zamówienie zamowienie;

		public FormularzS_ZIT_WyślijPowiadomienieOAnulowaniuZamówienia(){

		}

		~FormularzS_ZIT_WyślijPowiadomienieOAnulowaniuZamówienia(){

		}

		public Ster_ZIT_WyślijPowiadomienieOAnulowaniuZamówienia Ster_ZIT_WyślijPowiadomienieOAnulowaniuZamówienia{
			get{
				return m_Ster_ZIT_WyślijPowiadomienieOAnulowaniuZamówienia;
			}
			set{
				m_Ster_ZIT_WyślijPowiadomienieOAnulowaniuZamówienia = value;
			}
		}

		public Ster_ZR_WyślijPowiadomienieOAnulowaniuRezerwacji Ster_ZR_WyślijPowiadomienieOAnulowaniuRezerwacji{
			get{
				return m_Ster_ZR_WyślijPowiadomienieOAnulowaniuRezerwacji;
			}
			set{
				m_Ster_ZR_WyślijPowiadomienieOAnulowaniuRezerwacji = value;
			}
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
		/// <param name="zamowienie"></param>
		public void WyslijPowiadomienieOAnulowaniuZamowienia(Zamówienie zamowienie){

		}

	}//end FormularzS_ZIT_WyślijPowiadomienieOAnulowaniuZamówienia

}//end namespace Interfejsy