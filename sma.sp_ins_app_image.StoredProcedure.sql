USE [MSBApps]
GO
/****** Object:  StoredProcedure [sma].[sp_ins_app_image]    Script Date: 11/10/2016 1:17:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







CREATE Procedure [sma].[sp_ins_app_image]
(
@app_id	int,
@image_name	varchar(255),
@image_path	varchar(255),
@file_type_ind	varchar(50),
@image_desc	varchar(255)=null, 
@create_enduser_id	int
) 
As
Begin

INSERT INTO msbapps..image
(
	app_num	,
	entity_type_ind	,
	imagetype_id	,
	image_name	,
	image_path	,
	file_type_ind	,
	image_desc	,
	create_enduser_id	,
	modify_enduser_id	,
	row_create_date	,
	row_modify_date	,
	active_switch	
)
VALUES 
(
	@app_id,	
	'appinn',	
	120,	
	@image_name,	
	@image_path,	
	@file_type_ind,	
	@image_desc,	
	@create_enduser_id,	
	@create_enduser_id,	
	GetDate(),	
	GetDate(),	
	'Y'	
)
End




GO
