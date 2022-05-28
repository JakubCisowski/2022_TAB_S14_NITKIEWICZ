﻿// <auto-generated />
using System;
using Autobusy.Logic.Contexts;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;

#nullable disable

namespace Autobusy.Logic.Migrations
{
    [DbContext(typeof(AutobusyContext))]
    [Migration("20220528194054_TestMigration")]
    partial class TestMigration
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "6.0.4")
                .HasAnnotation("Relational:MaxIdentifierLength", 128);

            SqlServerModelBuilderExtensions.UseIdentityColumns(modelBuilder, 1L, 1);

            modelBuilder.Entity("Autobusy.Logic.Models.Autobus", b =>
                {
                    b.Property<int>("AutobusId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("AutobusId"), 1L, 1);

                    b.Property<DateTime>("DataProdukcji")
                        .HasColumnType("datetime2");

                    b.Property<string>("Marka")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("NumerRejestracyjny")
                        .HasColumnType("nvarchar(max)");

                    b.Property<double>("SpalanieNa100")
                        .HasColumnType("float");

                    b.Property<int>("StanAutobusu")
                        .HasColumnType("int");

                    b.HasKey("AutobusId");

                    b.ToTable("Autobusy");
                });

            modelBuilder.Entity("Autobusy.Logic.Models.Kierowca", b =>
                {
                    b.Property<int>("KierowcaId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("KierowcaId"), 1L, 1);

                    b.Property<int>("Doswiadczenie")
                        .HasColumnType("int");

                    b.Property<string>("Imie")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Nazwisko")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("KierowcaId");

                    b.ToTable("Kierowcy");
                });

            modelBuilder.Entity("Autobusy.Logic.Models.Kurs", b =>
                {
                    b.Property<int>("KursId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("KursId"), 1L, 1);

                    b.Property<int>("DzienTygodnia")
                        .HasColumnType("int");

                    b.Property<DateTime>("GodzinaRozpoczecia")
                        .HasColumnType("datetime2");

                    b.Property<int?>("LiniaId")
                        .HasColumnType("int");

                    b.HasKey("KursId");

                    b.HasIndex("LiniaId");

                    b.ToTable("Kursy");
                });

            modelBuilder.Entity("Autobusy.Logic.Models.Linia", b =>
                {
                    b.Property<int>("LiniaId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("LiniaId"), 1L, 1);

                    b.Property<double>("DlugoscWKm")
                        .HasColumnType("float");

                    b.Property<string>("Numer")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("Typ")
                        .HasColumnType("int");

                    b.HasKey("LiniaId");

                    b.ToTable("Linie");
                });

            modelBuilder.Entity("Autobusy.Logic.Models.PlanKursu", b =>
                {
                    b.Property<int>("PlanKursuId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("PlanKursuId"), 1L, 1);

                    b.Property<int?>("KursId")
                        .HasColumnType("int");

                    b.Property<DateTime>("PlanowaGodzina")
                        .HasColumnType("datetime2");

                    b.Property<int?>("PrzystanekWLiniiId")
                        .HasColumnType("int");

                    b.HasKey("PlanKursuId");

                    b.HasIndex("KursId");

                    b.HasIndex("PrzystanekWLiniiId");

                    b.ToTable("PlanyKursu");
                });

            modelBuilder.Entity("Autobusy.Logic.Models.Przejazd", b =>
                {
                    b.Property<int>("PrzejazdId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("PrzejazdId"), 1L, 1);

                    b.Property<int?>("AutobusId")
                        .HasColumnType("int");

                    b.Property<DateTime>("Data")
                        .HasColumnType("datetime2");

                    b.Property<int>("IloscSkasowanychBiletow")
                        .HasColumnType("int");

                    b.Property<double>("IloscSpalonegoPaliwa")
                        .HasColumnType("float");

                    b.Property<int?>("KierowcaId")
                        .HasColumnType("int");

                    b.Property<int?>("KursId")
                        .HasColumnType("int");

                    b.HasKey("PrzejazdId");

                    b.HasIndex("AutobusId");

                    b.HasIndex("KierowcaId");

                    b.HasIndex("KursId");

                    b.ToTable("Przejazdy");
                });

            modelBuilder.Entity("Autobusy.Logic.Models.Przystanek", b =>
                {
                    b.Property<int>("PrzystanekId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("PrzystanekId"), 1L, 1);

                    b.Property<string>("Adres")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Nazwa")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Numer")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("PrzystanekId");

                    b.ToTable("Przystanki");
                });

            modelBuilder.Entity("Autobusy.Logic.Models.PrzystanekWLinii", b =>
                {
                    b.Property<int>("PrzystanekWLiniiId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("PrzystanekWLiniiId"), 1L, 1);

                    b.Property<int>("LiczbaPorzadkowa")
                        .HasColumnType("int");

                    b.Property<int?>("LiniaId")
                        .HasColumnType("int");

                    b.Property<int?>("PrzystanekId")
                        .HasColumnType("int");

                    b.HasKey("PrzystanekWLiniiId");

                    b.HasIndex("LiniaId");

                    b.HasIndex("PrzystanekId");

                    b.ToTable("PrzystankiWLinii");
                });

            modelBuilder.Entity("Autobusy.Logic.Models.RealizacjaPrzejazdu", b =>
                {
                    b.Property<int>("RealizacjaPrzejazduId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("RealizacjaPrzejazduId"), 1L, 1);

                    b.Property<DateTime>("FaktycznaGodzina")
                        .HasColumnType("datetime2");

                    b.Property<int?>("PlanKursuId")
                        .HasColumnType("int");

                    b.Property<int?>("PrzejazdId")
                        .HasColumnType("int");

                    b.HasKey("RealizacjaPrzejazduId");

                    b.HasIndex("PlanKursuId");

                    b.HasIndex("PrzejazdId");

                    b.ToTable("RealizacjePrzejazdu");
                });

            modelBuilder.Entity("Autobusy.Logic.Models.Serwis", b =>
                {
                    b.Property<int>("SerwisId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("SerwisId"), 1L, 1);

                    b.Property<int?>("AutobusId")
                        .HasColumnType("int");

                    b.Property<double>("Cena")
                        .HasColumnType("float");

                    b.Property<DateTime>("Data")
                        .HasColumnType("datetime2");

                    b.Property<string>("Opis")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("Typ")
                        .HasColumnType("int");

                    b.HasKey("SerwisId");

                    b.HasIndex("AutobusId");

                    b.ToTable("Serwisy");
                });

            modelBuilder.Entity("Autobusy.Logic.Models.Kurs", b =>
                {
                    b.HasOne("Autobusy.Logic.Models.Linia", "Linia")
                        .WithMany("Kursy")
                        .HasForeignKey("LiniaId");

                    b.Navigation("Linia");
                });

            modelBuilder.Entity("Autobusy.Logic.Models.PlanKursu", b =>
                {
                    b.HasOne("Autobusy.Logic.Models.Kurs", "Kurs")
                        .WithMany("PlanyKursu")
                        .HasForeignKey("KursId");

                    b.HasOne("Autobusy.Logic.Models.PrzystanekWLinii", "PrzystanekWLinii")
                        .WithMany("PlanyKursu")
                        .HasForeignKey("PrzystanekWLiniiId");

                    b.Navigation("Kurs");

                    b.Navigation("PrzystanekWLinii");
                });

            modelBuilder.Entity("Autobusy.Logic.Models.Przejazd", b =>
                {
                    b.HasOne("Autobusy.Logic.Models.Autobus", "Autobus")
                        .WithMany("Przejazdy")
                        .HasForeignKey("AutobusId");

                    b.HasOne("Autobusy.Logic.Models.Kierowca", "Kierowca")
                        .WithMany("Przejazdy")
                        .HasForeignKey("KierowcaId");

                    b.HasOne("Autobusy.Logic.Models.Kurs", "Kurs")
                        .WithMany("Przejazdy")
                        .HasForeignKey("KursId");

                    b.Navigation("Autobus");

                    b.Navigation("Kierowca");

                    b.Navigation("Kurs");
                });

            modelBuilder.Entity("Autobusy.Logic.Models.PrzystanekWLinii", b =>
                {
                    b.HasOne("Autobusy.Logic.Models.Linia", "Linia")
                        .WithMany("Przystanki")
                        .HasForeignKey("LiniaId");

                    b.HasOne("Autobusy.Logic.Models.Przystanek", "Przystanek")
                        .WithMany("Przystanki")
                        .HasForeignKey("PrzystanekId");

                    b.Navigation("Linia");

                    b.Navigation("Przystanek");
                });

            modelBuilder.Entity("Autobusy.Logic.Models.RealizacjaPrzejazdu", b =>
                {
                    b.HasOne("Autobusy.Logic.Models.PlanKursu", "PlanKursu")
                        .WithMany("RealizacjePrzejazdu")
                        .HasForeignKey("PlanKursuId");

                    b.HasOne("Autobusy.Logic.Models.Przejazd", "Przejazd")
                        .WithMany("RealizacjePrzejazdu")
                        .HasForeignKey("PrzejazdId");

                    b.Navigation("PlanKursu");

                    b.Navigation("Przejazd");
                });

            modelBuilder.Entity("Autobusy.Logic.Models.Serwis", b =>
                {
                    b.HasOne("Autobusy.Logic.Models.Autobus", "NaprawianyAutobus")
                        .WithMany("Serwisy")
                        .HasForeignKey("AutobusId");

                    b.Navigation("NaprawianyAutobus");
                });

            modelBuilder.Entity("Autobusy.Logic.Models.Autobus", b =>
                {
                    b.Navigation("Przejazdy");

                    b.Navigation("Serwisy");
                });

            modelBuilder.Entity("Autobusy.Logic.Models.Kierowca", b =>
                {
                    b.Navigation("Przejazdy");
                });

            modelBuilder.Entity("Autobusy.Logic.Models.Kurs", b =>
                {
                    b.Navigation("PlanyKursu");

                    b.Navigation("Przejazdy");
                });

            modelBuilder.Entity("Autobusy.Logic.Models.Linia", b =>
                {
                    b.Navigation("Kursy");

                    b.Navigation("Przystanki");
                });

            modelBuilder.Entity("Autobusy.Logic.Models.PlanKursu", b =>
                {
                    b.Navigation("RealizacjePrzejazdu");
                });

            modelBuilder.Entity("Autobusy.Logic.Models.Przejazd", b =>
                {
                    b.Navigation("RealizacjePrzejazdu");
                });

            modelBuilder.Entity("Autobusy.Logic.Models.Przystanek", b =>
                {
                    b.Navigation("Przystanki");
                });

            modelBuilder.Entity("Autobusy.Logic.Models.PrzystanekWLinii", b =>
                {
                    b.Navigation("PlanyKursu");
                });
#pragma warning restore 612, 618
        }
    }
}