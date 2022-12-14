USE [master]
GO
/****** Object:  Database [marketveritabanı]    Script Date: 29.10.2022 12:38:13 ******/
CREATE DATABASE [marketveritabanı]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'marketveritabanı', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\marketveritabanı.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'marketveritabanı_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\marketveritabanı_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [marketveritabanı] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [marketveritabanı].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [marketveritabanı] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [marketveritabanı] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [marketveritabanı] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [marketveritabanı] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [marketveritabanı] SET ARITHABORT OFF 
GO
ALTER DATABASE [marketveritabanı] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [marketveritabanı] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [marketveritabanı] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [marketveritabanı] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [marketveritabanı] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [marketveritabanı] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [marketveritabanı] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [marketveritabanı] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [marketveritabanı] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [marketveritabanı] SET  DISABLE_BROKER 
GO
ALTER DATABASE [marketveritabanı] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [marketveritabanı] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [marketveritabanı] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [marketveritabanı] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [marketveritabanı] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [marketveritabanı] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [marketveritabanı] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [marketveritabanı] SET RECOVERY FULL 
GO
ALTER DATABASE [marketveritabanı] SET  MULTI_USER 
GO
ALTER DATABASE [marketveritabanı] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [marketveritabanı] SET DB_CHAINING OFF 
GO
ALTER DATABASE [marketveritabanı] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [marketveritabanı] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [marketveritabanı] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [marketveritabanı] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'marketveritabanı', N'ON'
GO
ALTER DATABASE [marketveritabanı] SET QUERY_STORE = OFF
GO
USE [marketveritabanı]
GO
/****** Object:  Table [dbo].[arac_suruculeri]    Script Date: 29.10.2022 12:38:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[arac_suruculeri](
	[surucu_no] [int] NOT NULL,
	[calısan_no] [int] NOT NULL,
	[arac_no] [int] NOT NULL,
	[ehliyet_sinifi] [char](2) NOT NULL,
	[ehliyet_no] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[surucu_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[calısan_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ehliyet_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[araclar]    Script Date: 29.10.2022 12:38:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[araclar](
	[arac_no] [int] NOT NULL,
	[plaka] [varchar](12) NOT NULL,
	[nitelik] [varchar](12) NOT NULL,
	[yolcu_sayisi] [int] NOT NULL,
	[yuk_miktari] [int] NOT NULL,
	[model] [varchar](10) NOT NULL,
	[kasko_no] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[arac_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[kasko_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[plaka] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[calısanlar]    Script Date: 29.10.2022 12:38:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[calısanlar](
	[calısan_no] [int] NOT NULL,
	[departman_no] [int] NOT NULL,
	[sube_no] [int] NOT NULL,
	[isim] [varchar](12) NOT NULL,
	[soyisim] [varchar](12) NOT NULL,
	[dogum_tarihi] [date] NOT NULL,
	[dogum_yeri] [varchar](12) NOT NULL,
	[adres] [varchar](35) NOT NULL,
	[telefon] [varchar](12) NOT NULL,
	[cinsiyet] [char](1) NOT NULL,
	[ise_giris_tarihi] [date] NOT NULL,
	[gorev] [varchar](20) NOT NULL,
	[tc_no] [varchar](12) NOT NULL,
	[sigorta_no] [varchar](12) NOT NULL,
	[bnka_hesap_no] [varchar](12) NOT NULL,
	[maas] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[calısan_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[sigorta_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[bnka_hesap_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[tc_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[departmanlar]    Script Date: 29.10.2022 12:38:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[departmanlar](
	[departman_no] [int] NOT NULL,
	[departman_isim] [varchar](25) NOT NULL,
	[sorumluluk] [varchar](35) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[departman_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[musteri_servis]    Script Date: 29.10.2022 12:38:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[musteri_servis](
	[sefer_no] [int] NOT NULL,
	[arac_no] [int] NOT NULL,
	[surucu_no] [int] NOT NULL,
	[sefer_saati] [int] NOT NULL,
	[sefer_tarihi] [date] NOT NULL,
	[guzergah] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[sefer_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[arac_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[musteriler]    Script Date: 29.10.2022 12:38:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[musteriler](
	[musteri_card_no] [varchar](12) NOT NULL,
	[isim] [varchar](20) NOT NULL,
	[soyisim] [varchar](20) NOT NULL,
	[dogum_tarihi] [date] NOT NULL,
	[adres] [varchar](50) NOT NULL,
	[telefon] [varchar](12) NOT NULL,
	[email] [varchar](30) NOT NULL,
	[tc_no] [varchar](12) NOT NULL,
	[cinsiyet] [char](1) NOT NULL,
	[kart_alim_tarihi] [date] NOT NULL,
	[toplam_puan] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[musteri_card_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[tc_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[satislar]    Script Date: 29.10.2022 12:38:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[satislar](
	[satis_no] [int] NOT NULL,
	[urun_no] [int] NOT NULL,
	[calisan_no] [int] NOT NULL,
	[musteri_card_no] [varchar](12) NULL,
	[sube_no] [int] NOT NULL,
	[satis_tarigi] [date] NOT NULL,
	[alısveris_no] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[satis_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stoklar]    Script Date: 29.10.2022 12:38:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stoklar](
	[stok_no] [int] NOT NULL,
	[grup_no] [int] NOT NULL,
	[tedarikci_no] [int] NOT NULL,
	[sube_no] [int] NOT NULL,
	[urun_no] [int] NOT NULL,
	[giris_tarihi] [date] NOT NULL,
	[urun_sayisi] [int] NOT NULL,
	[raf_omru] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[stok_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[subeler]    Script Date: 29.10.2022 12:38:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[subeler](
	[sube_no] [int] NOT NULL,
	[sube_adi] [varchar](30) NOT NULL,
	[telefon] [int] NOT NULL,
	[adres] [varchar](50) NOT NULL,
	[calisan_sayisi] [int] NOT NULL,
	[urun_cesit_sayisi] [int] NOT NULL,
	[magaza_sinifi] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[sube_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tedarikciler]    Script Date: 29.10.2022 12:38:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tedarikciler](
	[tedarikci_no] [int] NOT NULL,
	[firma_isim] [varchar](50) NOT NULL,
	[adres] [varchar](50) NOT NULL,
	[telefon] [varchar](12) NOT NULL,
	[email] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[tedarikci_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[urunler]    Script Date: 29.10.2022 12:38:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[urunler](
	[urun_no] [int] NOT NULL,
	[grup_no] [int] NOT NULL,
	[urun_ismi] [varchar](25) NOT NULL,
	[marka] [varchar](25) NOT NULL,
	[fiyat] [money] NOT NULL,
	[gramaj] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[urun_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[arac_suruculeri]  WITH CHECK ADD  CONSTRAINT [FK_arac_suruculeri_araclar] FOREIGN KEY([arac_no])
REFERENCES [dbo].[araclar] ([arac_no])
GO
ALTER TABLE [dbo].[arac_suruculeri] CHECK CONSTRAINT [FK_arac_suruculeri_araclar]
GO
ALTER TABLE [dbo].[arac_suruculeri]  WITH CHECK ADD  CONSTRAINT [FK_arac_suruculeri_calısanlar] FOREIGN KEY([calısan_no])
REFERENCES [dbo].[calısanlar] ([calısan_no])
GO
ALTER TABLE [dbo].[arac_suruculeri] CHECK CONSTRAINT [FK_arac_suruculeri_calısanlar]
GO
ALTER TABLE [dbo].[calısanlar]  WITH CHECK ADD FOREIGN KEY([departman_no])
REFERENCES [dbo].[departmanlar] ([departman_no])
GO
ALTER TABLE [dbo].[calısanlar]  WITH CHECK ADD FOREIGN KEY([sube_no])
REFERENCES [dbo].[subeler] ([sube_no])
GO
ALTER TABLE [dbo].[musteri_servis]  WITH CHECK ADD  CONSTRAINT [FK_musteri_servis_arac_suruculeri] FOREIGN KEY([surucu_no])
REFERENCES [dbo].[arac_suruculeri] ([surucu_no])
GO
ALTER TABLE [dbo].[musteri_servis] CHECK CONSTRAINT [FK_musteri_servis_arac_suruculeri]
GO
ALTER TABLE [dbo].[musteri_servis]  WITH CHECK ADD  CONSTRAINT [FK_musteri_servis_araclar] FOREIGN KEY([arac_no])
REFERENCES [dbo].[araclar] ([arac_no])
GO
ALTER TABLE [dbo].[musteri_servis] CHECK CONSTRAINT [FK_musteri_servis_araclar]
GO
ALTER TABLE [dbo].[satislar]  WITH CHECK ADD FOREIGN KEY([calisan_no])
REFERENCES [dbo].[calısanlar] ([calısan_no])
GO
ALTER TABLE [dbo].[satislar]  WITH CHECK ADD FOREIGN KEY([musteri_card_no])
REFERENCES [dbo].[musteriler] ([musteri_card_no])
GO
ALTER TABLE [dbo].[satislar]  WITH CHECK ADD FOREIGN KEY([sube_no])
REFERENCES [dbo].[subeler] ([sube_no])
GO
ALTER TABLE [dbo].[satislar]  WITH CHECK ADD FOREIGN KEY([urun_no])
REFERENCES [dbo].[urunler] ([urun_no])
GO
ALTER TABLE [dbo].[stoklar]  WITH CHECK ADD FOREIGN KEY([tedarikci_no])
REFERENCES [dbo].[tedarikciler] ([tedarikci_no])
GO
ALTER TABLE [dbo].[stoklar]  WITH CHECK ADD  CONSTRAINT [FK_stoklar_subeler] FOREIGN KEY([sube_no])
REFERENCES [dbo].[subeler] ([sube_no])
GO
ALTER TABLE [dbo].[stoklar] CHECK CONSTRAINT [FK_stoklar_subeler]
GO
ALTER TABLE [dbo].[stoklar]  WITH CHECK ADD  CONSTRAINT [FK_stoklar_urunler] FOREIGN KEY([urun_no])
REFERENCES [dbo].[urunler] ([urun_no])
GO
ALTER TABLE [dbo].[stoklar] CHECK CONSTRAINT [FK_stoklar_urunler]
GO
USE [master]
GO
ALTER DATABASE [marketveritabanı] SET  READ_WRITE 
GO
