﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.225
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Linq;
using System.Data.Linq.Mapping;
using System.Linq;
using System.Linq.Expressions;
using System.Reflection;



[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="AlJebal")]
public partial class MenuDataClassesDataContext : System.Data.Linq.DataContext
{
	
	private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
	
  #region Extensibility Method Definitions
  partial void OnCreated();
  partial void InsertMenus(Menus instance);
  partial void UpdateMenus(Menus instance);
  partial void DeleteMenus(Menus instance);
  #endregion
	
	public MenuDataClassesDataContext() : 
			base(global::System.Configuration.ConfigurationManager.ConnectionStrings["AlJebalConnectionString4"].ConnectionString, mappingSource)
	{
		OnCreated();
	}
	
	public MenuDataClassesDataContext(string connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public MenuDataClassesDataContext(System.Data.IDbConnection connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public MenuDataClassesDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public MenuDataClassesDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public System.Data.Linq.Table<Menus> Menus
	{
		get
		{
			return this.GetTable<Menus>();
		}
	}
}

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Menus")]
public partial class Menus : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private int _MenuNum;
	
	private string _MenuName;
	
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnMenuNumChanging(int value);
    partial void OnMenuNumChanged();
    partial void OnMenuNameChanging(string value);
    partial void OnMenuNameChanged();
    #endregion
	
	public Menus()
	{
		OnCreated();
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MenuNum", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
	public int MenuNum
	{
		get
		{
			return this._MenuNum;
		}
		set
		{
			if ((this._MenuNum != value))
			{
				this.OnMenuNumChanging(value);
				this.SendPropertyChanging();
				this._MenuNum = value;
				this.SendPropertyChanged("MenuNum");
				this.OnMenuNumChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MenuName", DbType="VarChar(50)")]
	public string MenuName
	{
		get
		{
			return this._MenuName;
		}
		set
		{
			if ((this._MenuName != value))
			{
				this.OnMenuNameChanging(value);
				this.SendPropertyChanging();
				this._MenuName = value;
				this.SendPropertyChanged("MenuName");
				this.OnMenuNameChanged();
			}
		}
	}
	
	public event PropertyChangingEventHandler PropertyChanging;
	
	public event PropertyChangedEventHandler PropertyChanged;
	
	protected virtual void SendPropertyChanging()
	{
		if ((this.PropertyChanging != null))
		{
			this.PropertyChanging(this, emptyChangingEventArgs);
		}
	}
	
	protected virtual void SendPropertyChanged(String propertyName)
	{
		if ((this.PropertyChanged != null))
		{
			this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
		}
	}
}
#pragma warning restore 1591
