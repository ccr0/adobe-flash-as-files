//****************************************************************************
//Copyright (C) 2003 Macromedia, Inc. All Rights Reserved.
//The following is Sample Code and is subject to all restrictions on
//such code as contained in the End User License Agreement accompanying
//this product.
//****************************************************************************
import mx.styles.CSSStyleDeclaration;
import mx.core.ext.UIObjectExtensions;
import mx.core.UIObject;

class mx.skins.halo.Defaults
{
	var lineTo:Function;
	var curveTo:Function;
	var moveTo:Function;
	var beginFill:Function;
	var endFill:Function;
	var beginGradientFill:Function;

	static function setThemeDefaults():Void
	{
		var o = _global.style;
		o.themeColor = 0x80ff4d;  // "haloGreen" base color
		o.disabledColor = 0x848284;

		o.modalTransparency = 0; // completely transparent

		o.filled = true;
		o.stroked = true;
		o.strokeWidth = 1;
		o.strokeColor = 0x000000;
		o.fillColor = 0xffffff;
		o.repeatInterval = 35;	// fast.
		o.repeatDelay = 500;	// half second.

		o.fontFamily = "_sans";
		o.fontSize = 12;

		o.selectionColor = 0xCDFFC1;
  		o.rollOverColor =  0xe3ffd6;

		o.useRollOver = true;

		o.backgroundDisabledColor = 0xdddddd;
		o.selectionDisabledColor = 0xdddddd;
		o.selectionDuration = 200;
		o.openDuration = 250;
		o.borderStyle = "inset";

		o.color = 0xB333C;
		o.textSelectedColor = 0x005f33;
		o.textRollOverColor = 0x2b333c;
		o.textDisabledColor = 0xffffff;

		o.vGridLines = true;
		o.hGridLines = false;
		o.vGridLineColor = 0x666666;
		o.hGridLineColor = 0x666666;
		o.headerColor = 0xeaeaea;
		o.indentation = 17;
		o.folderOpenIcon = "TreeFolderOpen";
		o.folderClosedIcon = "TreeFolderClosed";
		o.defaultLeafIcon = "TreeNodeIcon";
		o.disclosureOpenIcon = "TreeDisclosureOpen";
		o.disclosureClosedIcon = "TreeDisclosureClosed";
		o.popupDuration = 150;

		o.todayColor = 0x666666;

		// default styles for various classes. other
		// properties are set on the ListAssets symbol
		o = _global.styles.ScrollSelectList = new CSSStyleDeclaration();
		o.backgroundColor = 0xffffff;
		o.borderColor = 0xcacaca;
		o.borderStyle = "inset";

		o = _global.styles.ComboBox = new CSSStyleDeclaration();
		o.borderStyle = "inset";

		o = _global.styles.NumericStepper = new CSSStyleDeclaration();
		o.textAlign = "center";

		o = _global.styles.RectBorder = new CSSStyleDeclaration();
		o.borderColor = 0xd5dddd;
		o.buttonColor =  0x6f7777;
		o.shadowColor =  0xEEEEEE;
		o.highlightColor = 0xc4cccc;
		o.shadowCapColor = 0xd5dddd;
		o.borderCapColor = 0x919999;
		var p = new Object();
		p.borderColor = 0xFF0000;
		p.buttonColor = 0xFF0000;
		p.shadowColor = 0xFF0000;
		p.highlightColor = 0xFF0000;
		p.shadowCapColor = 0xFF0000;
		p.borderCapColor = 0xFF0000;
		mx.core.UIComponent.prototype.origBorderStyles = p;

		var x;

		x = _global.styles.TextInput = new CSSStyleDeclaration();
		x.backgroundColor = 0xffffff;
		x.borderStyle = "inset";
		_global.styles.TextArea = _global.styles.TextInput;

		x = _global.styles.Window = new CSSStyleDeclaration();
		x.borderStyle = "default";

		//styleSheet declared on first frame of WindowAssets
		x = _global.styles.windowStyles = new CSSStyleDeclaration();
		x.fontWeight = "bold";

		//styleSheet declared on first frame of DataGridAssets
		x = _global.styles.dataGridStyles = new CSSStyleDeclaration();
		x.fontWeight = "bold";

		x = _global.styles.Alert = new CSSStyleDeclaration();
		x.borderStyle = "alert";

		x = _global.styles.ScrollView = new CSSStyleDeclaration();
		x.borderStyle = "inset";

		x = _global.styles.View = new CSSStyleDeclaration();
		x.borderStyle = "none";

		x = _global.styles.ProgressBar = new CSSStyleDeclaration();
		x.color = 0xAAB3B3;
		x.fontWeight = "bold";

		x = _global.styles.AccordionHeader = new CSSStyleDeclaration();
		x.fontWeight = "bold";
		x.fontSize = "11";

		x = _global.styles.Accordion = new CSSStyleDeclaration();
		x.borderStyle = "solid";
		x.backgroundColor = 0xFFFFFF;
		x.borderColor = 0x8a938a;
		x.headerHeight = 22;
		x.marginLeft = x.marginRight = x.marginTop = x.marginBottom = -1;
		x.verticalGap = -1;

		x = _global.styles.DateChooser = new CSSStyleDeclaration();
		x.borderColor = 0x919999;
		x.headerColor = 0xffffff;

		x = _global.styles.CalendarLayout = new CSSStyleDeclaration();
		x.fontSize = 10;
		x.textAlign = "right";
		x.color = 0x2B333C;

		x = _global.styles.WeekDayStyle = new CSSStyleDeclaration();
		x.fontWeight = "bold";
		x.fontSize = 11;
		x.textAlign = "center";
		x.color = 0x2B333C;

		x = _global.styles.TodayStyle = new CSSStyleDeclaration();
		x.color = 0xffffff;

		x = _global.styles.HeaderDateText = new CSSStyleDeclaration();
		x.fontSize = 12;
		x.fontWeight = "bold";
		x.textAlign = "center";


	}

	// drawRoundRect
	// x - x position of  fill
	// y - y position of  fill
	// w - width of  fill
	// h  - height of  fill
	// r - corner radius of fill :: number or object {br:#,bl:#,tl:#,tr:#}
	// c - hex color of fill :: number or array [0x######,0x######]
	// alpha - alpha value of fill :: number or array [0x######,0x######]
	// rot - rotation of fill :: number or matrix object  {matrixType:"box",x:#,y:#,w:#,h:#,r:(#*(Math.PI/180))}
	// gradient - type of gradient "linear" or "radial"
	// ratios - (optional :: default  [0,255]) - specifies the distribution of colors :: array [#,#];
	function drawRoundRect(x,y,w,h,r,c,alpha,rot,gradient,ratios)
	{
			if (typeof r == "object") {
				var rbr = r.br //bottom right corner
				var rbl = r.bl //bottom left corner
				var rtl = r.tl //top left corner
				var rtr = r.tr //top right corner
			}
			else
			{
				var rbr =  rbl = rtl = rtr = r;
			}
			// if color is an object then allow for complex fills
			if(typeof c == "object")
			{
				if (typeof alpha != "object")
					var alphas = [alpha,alpha];
				else
					var alphas = alpha;

				if (ratios == undefined)
					var ratios = [ 0, 0xff ];

				var sh = h *.7
				if (typeof rot != "object")
					var matrix = {matrixType:"box", x:-sh, y:sh, w:w*2, h:h*4, r:rot * 0.0174532925199433 }
				else
					var matrix = rot;

				if (gradient == "radial")
					this.beginGradientFill( "radial", c, alphas, ratios, matrix );
				else
					this.beginGradientFill( "linear", c, alphas, ratios, matrix );

			}
			else if (c != undefined)
			{
				this.beginFill (c, alpha);
			}

			// Math.sin and Math,tan values for optimal performance.
			// Math.rad = Math.PI/180 = 0.0174532925199433
			// r*Math.sin(45*Math.rad) =  (r*0.707106781186547);
			// r*Math.tan(22.5*Math.rad) = (r*0.414213562373095);

			//bottom right corner
			r = rbr;
			var a = r - (r*0.707106781186547); //radius - anchor pt;
			var s = r - (r*0.414213562373095); //radius - control pt;
			this.moveTo ( x+w,y+h-r);
			this.lineTo ( x+w,y+h-r );
			this.curveTo( x+w,y+h-s,x+w-a,y+h-a);
			this.curveTo( x+w-s,y+h,x+w-r,y+h);

			//bottom left corner
			r = rbl;
			var a = r - (r*0.707106781186547);
			var s = r - (r*0.414213562373095);
			this.lineTo ( x+r,y+h );
			this.curveTo( x+s,y+h,x+a,y+h-a);
			this.curveTo( x,y+h-s,x,y+h-r);

			//top left corner
			r = rtl;
			var a = r - (r*0.707106781186547);
			var s = r - (r*0.414213562373095);
			this.lineTo ( x,y+r );
			this.curveTo( x,y+s,x+a,y+a);
			this.curveTo( x+s,y,x+r,y);

			//top right
			r = rtr;
			var a = r - (r*0.707106781186547);
			var s = r - (r*0.414213562373095);
			this.lineTo ( x+w-r,y );
			this.curveTo( x+w-s,y,x+w-a,y+a);
			this.curveTo( x+w,y+s,x+w,y+r);
			this.lineTo ( x+w,y+h-r );

			if (c != undefined)
				this.endFill();
	}

	static function classConstruct():Boolean
	{

		UIObjectExtensions.Extensions();

		setThemeDefaults();

		UIObject.prototype.drawRoundRect = Defaults.prototype.drawRoundRect;

		return true;
	}
	static var classConstructed = classConstruct();
	static var CSSStyleDeclarationDependency = CSSStyleDeclaration;
	static var UIObjectExtensionsDependency = UIObjectExtensions;
	static var UIObjectDependency = UIObject;
}
