// CodeGear C++Builder
// Copyright (c) 1995, 2011 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'ResizeKit.pas' rev: 23.00 (Win32)

#ifndef ResizekitHPP
#define ResizekitHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <SysInit.hpp>	// Pascal unit
#include <Winapi.Windows.hpp>	// Pascal unit
#include <Winapi.Messages.hpp>	// Pascal unit
#include <System.SysUtils.hpp>	// Pascal unit
#include <System.Classes.hpp>	// Pascal unit
#include <Vcl.Graphics.hpp>	// Pascal unit
#include <Vcl.Controls.hpp>	// Pascal unit
#include <Vcl.Forms.hpp>	// Pascal unit
#include <Vcl.Dialogs.hpp>	// Pascal unit
#include <System.TypInfo.hpp>	// Pascal unit
#include <Vcl.StdCtrls.hpp>	// Pascal unit
#include <Winapi.ShellAPI.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Resizekit
{
//-- type declarations -------------------------------------------------------
struct TCtrlInfo;
typedef TCtrlInfo *PCtrlInfo;

struct DECLSPEC_DRECORD TCtrlInfo
{
	
public:
	System::UnicodeString Name;
	int Left;
	int Top;
	int Width;
	int Height;
	int OldLeft;
	int OldTop;
	int OldWidth;
	int OldHeight;
	int OldFontSize;
	Vcl::Graphics::TFont* Font;
	bool ParentFont;
	bool OrgParentFont;
	System::UnicodeString ParentName;
	int ChildCtlCnt;
};


typedef void __fastcall (__closure *TExitResizeEvent)(System::TObject* Sender, double XScale, double YScale);

#pragma option push -b-
enum TResizeFormPos : unsigned char { rpDefault, rpTopLeft, rpTopCenter, rpTopRight, rpMiddleLeft, rpMiddleCenter, rpMiddleRight, rpBottomLeft, rpBottomCenter, rpBottomRight };
#pragma option pop

class DELPHICLASS TResizeKit;
class PASCALIMPLEMENTATION TResizeKit : public System::Classes::TComponent
{
	typedef System::Classes::TComponent inherited;
	
private:
	System::UnicodeString FOwnerFormName;
	int FOwnerWidth;
	int FOwnerHeight;
	HWND FOwnerHandle;
	Vcl::Graphics::TFont* FOwnerFont;
	System::Classes::TList* FCtrls;
	void *FSelfPointer;
	System::Classes::TStringList* FNoResizeFntCtls;
	System::Classes::TStringList* FNoResizeCtls;
	int FAddCnt;
	double FPrevScaleX;
	double FPrevScaleY;
	double FPrevScaleF;
	int FDesignFrmW;
	int FDesignFrmH;
	int FDesignDpiW;
	int FDesignDpiH;
	int FRunDpiW;
	int FRunDpiH;
	bool FIsResized;
	TResizeFormPos FFormPos;
	int FFormWidth;
	int FFormHeight;
	int FFormMaxWidth;
	int FFormMaxHeight;
	int FFormMinWidth;
	int FFormMinHeight;
	bool FResizeFont;
	System::UnicodeString FNoResizeFntCtl;
	System::UnicodeString FNoResizeCtl;
	int FCtlCnt;
	TExitResizeEvent FOnExitResize;
	bool FEnabled;
	bool FValidTaskbar;
	int lpPrevWndProc;
	System::Classes::TList* FChildCtrls;
	int FChildCtlCnt;
	void __fastcall GetFontSetting(Vcl::Graphics::TFont* &DFont, System::Classes::TComponent* C);
	void __fastcall SetNoResizeFntCtls(void);
	void __fastcall SetNoResizeCtls(void);
	void __fastcall SetFormPos(TResizeFormPos Value);
	void __fastcall SetFormWidth(int Value);
	void __fastcall SetFormHeight(int Value);
	void __fastcall SetFormMaxWidth(int Value);
	void __fastcall SetFormMaxHeight(int Value);
	void __fastcall SetFormMinWidth(int Value);
	void __fastcall SetFormMinHeight(int Value);
	void __fastcall SetResizeFont(bool Value);
	void __fastcall SetNoResizeFntCtl(System::UnicodeString Value);
	void __fastcall SetNoResizeCtl(System::UnicodeString Value);
	void __fastcall SetEnabled(bool Value);
	void __fastcall SetValidTaskbar(bool Value);
	void __fastcall WriteDesignFrmW(System::Classes::TWriter* Writer);
	void __fastcall WriteDesignFrmH(System::Classes::TWriter* Writer);
	void __fastcall WriteDesignDpiW(System::Classes::TWriter* Writer);
	void __fastcall WriteDesignDpiH(System::Classes::TWriter* Writer);
	void __fastcall ReadDesignFrmW(System::Classes::TReader* Reader);
	void __fastcall ReadDesignFrmH(System::Classes::TReader* Reader);
	void __fastcall ReadDesignDpiW(System::Classes::TReader* Reader);
	void __fastcall ReadDesignDpiH(System::Classes::TReader* Reader);
	bool __fastcall CheckJapan(void);
	
protected:
	__fastcall virtual TResizeKit(System::Classes::TComponent* Owner);
	__fastcall virtual ~TResizeKit(void);
	virtual void __fastcall Loaded(void);
	virtual void __fastcall DefineProperties(System::Classes::TFiler* Filer);
	
public:
	void __fastcall DynamicAdd(void);
	void __fastcall DynamicDelete(void);
	
__published:
	__property TResizeFormPos FormPos = {read=FFormPos, write=SetFormPos, nodefault};
	__property int FormWidth = {read=FFormWidth, write=SetFormWidth, nodefault};
	__property int FormHeight = {read=FFormHeight, write=SetFormHeight, nodefault};
	__property int FormMaxWidth = {read=FFormMaxWidth, write=SetFormMaxWidth, nodefault};
	__property int FormMaxHeight = {read=FFormMaxHeight, write=SetFormMaxHeight, nodefault};
	__property int FormMinWidth = {read=FFormMinWidth, write=SetFormMinWidth, nodefault};
	__property int FormMinHeight = {read=FFormMinHeight, write=SetFormMinHeight, nodefault};
	__property bool ResizeFont = {read=FResizeFont, write=SetResizeFont, nodefault};
	__property System::UnicodeString NoResizeFntCtl = {read=FNoResizeFntCtl, write=SetNoResizeFntCtl};
	__property System::UnicodeString NoResizeCtl = {read=FNoResizeCtl, write=SetNoResizeCtl};
	__property bool Enabled = {read=FEnabled, write=SetEnabled, nodefault};
	__property bool ValidTaskbar = {read=FValidTaskbar, write=SetValidTaskbar, nodefault};
	__property TExitResizeEvent OnExitResize = {read=FOnExitResize, write=FOnExitResize};
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE void __fastcall Register(void);

}	/* namespace Resizekit */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_RESIZEKIT)
using namespace Resizekit;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// ResizekitHPP
