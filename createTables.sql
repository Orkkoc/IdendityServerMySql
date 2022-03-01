create table AspNetRoleClaims(
   Id INT NOT NULL AUTO_INCREMENT,
   ClaimType nvarchar(450) NOT NULL,
   ClaimValue nvarchar(450) NOT NULL,
   RoleId nvarchar(450) NOT NULL,
   PRIMARY KEY (Id)
);

create table AspNetRoles(
   Id INT NOT NULL AUTO_INCREMENT,
   ConcurrencyStamp nvarchar(450) NULL,
   Name nvarchar(256) NULL,
   NormalizedName nvarchar(256) NULL,
   PRIMARY KEY (Id)
);

create table AspNetUserClaims(
   Id INT NOT NULL AUTO_INCREMENT,
   ClaimType nvarchar(450) NULL,
   ClaimValue nvarchar(450) NULL,
   UserId nvarchar(450) NULL,
   PRIMARY KEY (Id)
);

create table AspNetUserLogins(
   LoginProvider nvarchar(450) NOT NULL,
   ProviderKey nvarchar(450) NOT NULL,
   ProviderDisplayName nvarchar(450) NULL,
   UserId nvarchar(450) NOT NULL
);

create table AspNetUserRoles (
   UserId nvarchar(450) NOT NULL,
   RoleId nvarchar(450) NOT NULL
);

create table AspNetUsers(
	Id nvarchar(450) NOT NULL,
	AccessFailedCount int NOT NULL,
	ConcurrencyStamp nvarchar(450) NULL,
	Email nvarchar(450) NULL,
	EmailConfirmed nvarchar(450) NULL,
	LockoutEnabled bit NOT NULL,
	LockoutEnd timestamp(6) NULL,
	NormalizedEmail nvarchar(256) NULL,
	NormalizedUserName nvarchar(256) NULL,
	PasswordHash nvarchar(450) NULL,
	PhoneNumber nvarchar(450) NULL,
	PhoneNumberConfirmed bit NOT NULL,
	SecurityStamp nvarchar(450) NULL,
	TwoFactorEnabled bit NOT NULL,
	UserName nvarchar(256) NULL,
	PRIMARY KEY (Id)
);

create table AspNetUserTokens(
	UserId nvarchar(450) NOT NULL,
	LoginProvider nvarchar(450) NOT NULL,
	Name nvarchar(450) NOT NULL,
	Value nvarchar(450) NULL
);
