﻿using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Autobusy.Logic.Models;

public class Serwis
{
	[Key]
	[DatabaseGenerated(DatabaseGeneratedOption.Identity)]
	public int SerwisId { get; set; }

	public DateTime Data { get; set; }
	public TypSerwisu Typ { get; set; }
	public double Cena { get; set; }
	public string Opis { get; set; }
	
	[ForeignKey("AutobusId")]
	public Autobus NaprawianyAutobus { get; set; }
	
	public override bool Equals(object obj)
	{
		if (obj is Serwis serwis && serwis.SerwisId == this.SerwisId)
		{
			return true;
		}

		return false;
	}
}