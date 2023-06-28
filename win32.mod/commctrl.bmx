Strict
' commctrl.bmx

Import "user32.bmx"

Import "commctrl.cpp"

Const BS_PUSHBUTTON=0
Const BS_DEFPUSHBUTTON=1
Const BS_CHECKBOX=2
Const BS_AUTOCHECKBOX=3
Const BS_RADIOBUTTON=4
Const BS_3STATE=5
Const BS_AUTO3STATE=6
Const BS_GROUPBOX=7
Const BS_USERBUTTON=8
Const BS_AUTORADIOBUTTON=9
Const BS_PUSHBOX=10
Const BS_OWNERDRAW=11
Const BS_TYPEMASK=15
Const BS_LEFTTEXT=$20
Const BS_TEXT=0
Const BS_ICON=$40
Const BS_BITMAP=$80
Const BS_LEFT=$100
Const BS_RIGHT=$200
Const BS_CENTER=$300
Const BS_TOP=$400
Const BS_BOTTOM=$800
Const BS_VCENTER=$c00
Const BS_PUSHLIKE=$1000
Const BS_MULTILINE=$2000
Const BS_NOTIFY=$4000
Const BS_FLAT=$8000
Const BS_RIGHTBUTTON=BS_LEFTTEXT

Const BN_CLICKED=0
Const BN_PAINT=1
Const BN_HILITE=2
Const BN_UNHILITE=3
Const BN_DISABLE=4
Const BN_DOUBLECLICKED=5
Const BN_PUSHED=BN_HILITE
Const BN_UNPUSHED=BN_UNHILITE
Const BN_DBLCLK=BN_DOUBLECLICKED
Const BN_SETFOCUS=6
Const BN_KILLFOCUS=7

Const BM_GETCHECK=$F0
Const BM_SETCHECK=$F1
Const BM_GETSTATE=$F2
Const BM_SETSTATE=$F3
Const BM_SETSTYLE=$F4
Const BM_CLICK=$F5
Const BM_GETIMAGE=$F6
Const BM_SETIMAGE=$F7

Const BST_UNCHECKED=0
Const BST_CHECKED=1
Const BST_INDETERMINATE=2
Const BST_PUSHED=4
Const BST_FOCUS=8


Const ES_LEFT=0
Const ES_CENTER=1
Const ES_RIGHT=2
Const ES_MULTILINE=4
Const ES_UPPERCASE=8
Const ES_LOWERCASE=$10
Const ES_PASSWORD=$20
Const ES_AUTOVSCROLL=$40
Const ES_AUTOHSCROLL=$80
Const ES_NOHIDESEL=$100
Const ES_OEMCONVERT=$400
Const ES_READONLY=$800
Const ES_WANTRETURN=$1000
Const ES_NUMBER=$2000

Const ES_NOOLEDRAGDROP=8

' Edit Control Notification Codes

Const EN_SETFOCUS=$100
Const EN_KILLFOCUS=$200
Const EN_CHANGE=$300
Const EN_UPDATE=$400
Const EN_ERRSPACE=$0500
Const EN_MAXTEXT=$501
Const EN_HSCROLL=$601
Const EN_VSCROLL=$602

Const EN_ALIGN_LTR_EC=$700
Const EN_ALIGN_RTL_EC=$701

' Edit control EM_SETMARGIN parameters

Const EC_LEFTMARGIN=1
Const EC_RIGHTMARGIN=2
Const EC_USEFONTINFO=$ffff

' wParam of EM_GET/SETIMESTATUS

Const EMSIS_COMPOSITIONSTRING=1

' lParam For EMSIS_COMPOSITIONSTRING

Const EIMES_GETCOMPSTRATONCE=1
Const EIMES_CANCELCOMPSTRINFOCUS=2
Const EIMES_COMPLETECOMPSTRKILLFOCUS=4

' EDITWORDBREAKPROC code values

Const WB_LEFT=0
Const WB_RIGHT=1
Const WB_ISDELIMITER=2

'ComboBoxstyles
Extern
	Function bmx_win32_COMBOBOXEXITEMW_new:Byte Ptr()
	Function bmx_win32_COMBOBOXEXITEMW_free(handle:Byte Ptr)
	Function bmx_win32_COMBOBOXEXITEMW_Setmask(handle:Byte Ptr, mask:UInt)
	Function bmx_win32_COMBOBOXEXITEMW_SetiItem(handle:Byte Ptr, iItem:Int Ptr)
	Function bmx_win32_COMBOBOXEXITEMW_SetpszText(handle:Byte Ptr, pszText:Short Ptr)
	Function bmx_win32_COMBOBOXEXITEMW_SetiImage(handle:Byte Ptr, iImage:Int)
	Function bmx_win32_COMBOBOXEXITEMW_SetiSelectedImage(handle:Byte Ptr, iSelectedImage:Int)
	Function bmx_win32_COMBOBOXEXITEMW_mask:UInt(handle:Byte Ptr)
	Function bmx_win32_COMBOBOXEXITEMW_pszText:Short Ptr(handle:Byte Ptr)
End Extern
Type COMBOBOXEXITEMW
	Field itemPtr:Byte Ptr
	
	Method New()
		itemPtr = bmx_win32_COMBOBOXEXITEMW_new()
	End Method

	Method Delete()
		Free()
	End Method
	
	Method Free()
		If itemPtr Then
			bmx_win32_COMBOBOXEXITEMW_free(itemPtr)
			itemPtr = Null
		End If
	End Method
	
	Method Setmask(mask:UInt)
		bmx_win32_COMBOBOXEXITEMW_Setmask(itemPtr, mask)
	End Method
	
	Method SetiItem(iItem:Int Ptr)
		bmx_win32_COMBOBOXEXITEMW_SetiItem(itemPtr, iItem)
	End Method
	
	Method SetpszText(pszText:Short Ptr)
		bmx_win32_COMBOBOXEXITEMW_SetpszText(itemPtr, pszText)
	End Method
	
	Method SetiImage(iImage:Int)
		bmx_win32_COMBOBOXEXITEMW_SetiImage(itemPtr, iImage)
	End Method
	
	Method SetiSelectedImage(iSelectedImage:Int)
		bmx_win32_COMBOBOXEXITEMW_SetiSelectedImage(itemPtr, iSelectedImage)
	End Method
	
	Method mask:UInt()
		Return bmx_win32_COMBOBOXEXITEMW_mask(itemPtr)
	End Method
	
	Method pszText:Short Ptr()
		Return bmx_win32_COMBOBOXEXITEMW_pszText(itemPtr)
	End Method
'	Field mask
'	Field iItem
'	Field pszText:Short Ptr
'	Field cchTextMax
'	Field iImage
'	Field iSelectedImage
'	Field iOverlay
'	Field iIndent
'	Field lParam
End Type

Const CBS_SIMPLE=$0001
Const CBS_DROPDOWN=$0002
Const CBS_DROPDOWNLIST=$0003
Const CBS_OWNERDRAWFIXED=$0010
Const CBS_OWNERDRAWVARIABLE=$0020
Const CBS_AUTOHSCROLL=$0040
Const CBS_OEMCONVERT=$0080
Const CBS_SORT=$0100
Const CBS_HASSTRINGS=$0200
Const CBS_NOINTEGRALHEIGHT=$0400
Const CBS_DISABLENOSCROLL=$0800
Const CBS_UPPERCASE=$2000
Const CBS_LOWERCASE=$4000

'ComboBoxmessages

Const CB_ERR=-1
Const CB_ERRSPACE=-2

Const CBN_ERRSPACE=-1
Const CBN_SELCHANGE=1
Const CBN_DBLCLK=2
Const CBN_SETFOCUS=3
Const CBN_KILLFOCUS=4
Const CBN_EDITCHANGE=5
Const CBN_EDITUPDATE=6
Const CBN_DROPDOWN=7
Const CBN_CLOSEUP=8
Const CBN_SELENDOK=9
Const CBN_SELENDCANCEL=10

Const CB_GETEDITSEL=$0140
Const CB_LIMITTEXT=$0141
Const CB_SETEDITSEL=$0142
Const CB_ADDSTRING=$0143
Const CB_DELETESTRING=$0144
Const CB_DIR=$0145
Const CB_GETCOUNT=$0146
Const CB_GETCURSEL=$0147
Const CB_GETLBTEXT=$0148
Const CB_GETLBTEXTLEN=$0149
Const CB_INSERTSTRING=$014A
Const CB_RESETCONTENT=$014B
Const CB_FINDSTRING=$014C
Const CB_SELECTSTRING=$014D
Const CB_SETCURSEL=$014E
Const CB_SHOWDROPDOWN=$014F
Const CB_GETITEMDATA=$0150
Const CB_SETITEMDATA=$0151
Const CB_GETDROPPEDCONTROLRECT=$0152
Const CB_SETITEMHEIGHT=$0153
Const CB_GETITEMHEIGHT=$0154
Const CB_SETEXTENDEDUI=$0155
Const CB_GETEXTENDEDUI=$0156
Const CB_GETDROPPEDSTATE=$0157
Const CB_FINDSTRINGEXACT=$0158
Const CB_SETLOCALE=$0159
Const CB_GETLOCALE=$015A

Const CB_GETTOPINDEX=$015b
Const CB_SETTOPINDEX=$015c
Const CB_GETHORIZONTALEXTENT=$015d
Const CB_SETHORIZONTALEXTENT=$015e
Const CB_GETDROPPEDWIDTH=$015f
Const CB_SETDROPPEDWIDTH=$0160
Const CB_INITSTORAGE=$0161

Const CB_MULTIPLEADDSTRING=$0163
Const CB_GETCOMBOBOXINFO=$0164

Const CBEM_INSERTITEMA=WM_USER+1
Const CBEM_SETIMAGELIST=WM_USER+2
Const CBEM_GETIMAGELIST=WM_USER+3
Const CBEM_GETITEMA=WM_USER+4
Const CBEM_SETITEMA=WM_USER+5
Const CBEM_DELETEITEM=CB_DELETESTRING
Const CBEM_GETCOMBOCONTROL=WM_USER+6
Const CBEM_GETEDITCONTROL=WM_USER+7
Const CBEM_SETEXSTYLE=WM_USER+8			'use SETEXTENDEDSTYLE instead
Const CBEM_GETEXSTYLE=WM_USER+9			'use GETEXTENDEDSTYLE instead
Const CBEM_GETEXTENDEDSTYLE=WM_USER+9
Const CBEM_HASEDITCHANGED=WM_USER+10
Const CBEM_INSERTITEMW=WM_USER+11
Const CBEM_SETITEMW=WM_USER+12
Const CBEM_GETITEMW=WM_USER+13
Const CBEM_SETEXTENDEDSTYLE=WM_USER+14	'lparam==Newstyle,wParam(optional)=mask

Const CBEIF_TEXT=1
Const CBEIF_IMAGE=2
Const CBEIF_SELECTEDIMAGE=4
Const CBEIF_OVERLAY=8
Const CBEIF_INDENT=16
Const CBEIF_LPARAM=32
Const CBEIF_DI_SETITEM=$10000000

'Const CBEM_SETUNICODEFORMAT=CCM_SETUNICODEFORMAT
'Const CBEM_GETUNICODEFORMAT=CCM_GETUNICODEFORMAT
'Const CBEM_SETWINDOWTHEME=CCM_SETWINDOWTHEME

' Tab Control
Extern
	Function bmx_win32_TCITEMW_new:Byte Ptr()
	Function bmx_win32_TCITEMW_free(handle:Byte Ptr)
	Function bmx_win32_TCITEMW_Setmask(handle:Byte Ptr, mask:UInt)
	Function bmx_win32_TCITEMW_SetpszText(handle:Byte Ptr, pszText:Short Ptr)
	Function bmx_win32_TCITEMW_SetiImage(handle:Byte Ptr, iImage:Int)
	Function bmx_win32_TCITEMW_pszText:Short Ptr(handle:Byte Ptr)
End Extern
Type TCITEMW
	Field itemPtr:Byte Ptr

	Method New()
		itemPtr = bmx_win32_TCITEMW_new()
	End Method
	
	Method Delete()
		Free()
	End Method
	
	Method Free()
		If itemPtr Then
			bmx_win32_TCITEMW_free(itemPtr)
			itemPtr = Null
		End If
	End Method
	
	Method Setmask(mask:UInt)
		bmx_win32_TCITEMW_Setmask(itemPtr, mask)
	End Method
	
	Method SetpszText(pszText:Short Ptr)
		bmx_win32_TCITEMW_SetpszText(itemPtr, pszText)
	End Method
	
	Method SetiImage(iImage:Int)
		bmx_win32_TCITEMW_SetiImage(itemPtr, iImage)
	End Method
	
	Method pszText:Short Ptr()
		Return bmx_win32_TCITEMW_pszText(itemPtr)
	End Method
	
'	Field mask
'	Field dwState
'	Field dwStateMask
'	Field pszText:Short Ptr
'	Field cchTextMax
'	Field iImage
'	Field lParam
End Type

' TabberMessages

Const TCM_FIRST=$1300

Const TCM_GETIMAGELIST=TCM_FIRST+2

Const TCM_SETIMAGELIST=TCM_FIRST+3
Const TCM_GETITEMCOUNT=TCM_FIRST+4

Const TCM_GETITEMA=TCM_FIRST+5
Const TCM_GETITEMW=TCM_FIRST+60
Const TCM_SETITEMA=TCM_FIRST+6
Const TCM_SETITEMW=TCM_FIRST+61
Const TCM_INSERTITEMA=TCM_FIRST+7
Const TCM_INSERTITEMW=TCM_FIRST+62
Const TCM_DELETEITEM=TCM_FIRST+8
Const TCM_DELETEALLITEMS=TCM_FIRST+9
Const TCM_GETITEMRECT=TCM_FIRST+10
Const TCM_GETCURSEL=TCM_FIRST+11
Const TCM_SETCURSEL=TCM_FIRST+12

Const TCM_HITTEST=TCM_FIRST+13
Const TCM_SETITEMEXTRA=TCM_FIRST+14
Const TCM_ADJUSTRECT=TCM_FIRST+40
Const TCM_SETITEMSIZE=TCM_FIRST+41
Const TCM_REMOVEIMAGE=TCM_FIRST+42
Const TCM_SETPADDING=TCM_FIRST+43
Const TCM_GETROWCOUNT=TCM_FIRST+44
Const TCM_GETTOOLTIPS=TCM_FIRST+45
Const TCM_SETTOOLTIPS=TCM_FIRST+46
Const TCM_GETCURFOCUS=TCM_FIRST+47
Const TCM_SETCURFOCUS=TCM_FIRST+48
Const TCM_SETMINTABWIDTH=TCM_FIRST+49
Const TCM_DESELECTALL=TCM_FIRST+50
Const TCM_HIGHLIGHTITEM=TCM_FIRST+51
Const TCM_SETEXTENDEDSTYLE=TCM_FIRST+52	'optional wParam=mask
Const TCM_GETEXTENDEDSTYLE=TCM_FIRST+53

'Const TCM_SETUNICODEFORMAT=CCM_SETUNICODEFORMAT
'Const TCM_GETUNICODEFORMAT=CCM_GETUNICODEFORMAT

Const TCHT_NOWHERE=1
Const TCHT_ONITEMICON=2
Const TCHT_ONITEMLABEL=4
Const TCHT_ONITEM=TCHT_ONITEMICON|TCHT_ONITEMLABEL

' ListViewMessages

Const LVS_ICON=$0000
Const LVS_REPORT=$0001
Const LVS_SMALLICON=$0002
Const LVS_LIST=$0003
Const LVS_TYPEMASK=$0003
Const LVS_SINGLESEL=$0004
Const LVS_SHOWSELALWAYS=$0008
Const LVS_SORTASCENDING=$0010
Const LVS_SORTDESCENDING=$0020
Const LVS_SHAREIMAGELISTS=$0040
Const LVS_NOLABELWRAP=$0080
Const LVS_AUTOARRANGE=$0100
Const LVS_EDITLABELS=$0200

Const LVS_OWNERDATA=$1000

Const LVS_NOSCROLL=$2000

Const LVS_TYPESTYLEMASK=$fc00

Const LVS_ALIGNTOP=$0000
Const LVS_ALIGNLEFT=$0800
Const LVS_ALIGNMASK=$0c00

Const LVS_OWNERDRAWFIXED=$0400
Const LVS_NOCOLUMNHEADER=$4000
Const LVS_NOSORTHEADER=$8000

' TabControlMessages


Const TCS_SCROLLOPPOSITE=$0001	'assumesmultilinetab
Const TCS_BOTTOM=$0002
Const TCS_RIGHT=$0002
Const TCS_MULTISELECT=$0004		'allowmulti-Selectinbuttonmode

Const TCS_FLATBUTTONS=$0008
Const TCS_FORCEICONLEFT=$0010
Const TCS_FORCELABELLEFT=$0020
Const TCS_HOTTRACK=$0040
Const TCS_VERTICAL=$0080

Const TCS_TABS=$0000
Const TCS_BUTTONS=$0100
Const TCS_SINGLELINE=$0000
Const TCS_MULTILINE=$0200
Const TCS_RIGHTJUSTIFY=$0000
Const TCS_FIXEDWIDTH=$0400
Const TCS_RAGGEDRIGHT=$0800
Const TCS_FOCUSONBUTTONDOWN=$1000
Const TCS_OWNERDRAWFIXED=$2000
Const TCS_TOOLTIPS=$4000
Const TCS_FOCUSNEVER=$8000

Const TCS_EX_FLATSEPARATORS=$00000001
Const TCS_EX_REGISTERDROP=$00000002

Const TCIF_TEXT=1
Const TCIF_IMAGE=2
Const TCIF_RTLREADING=4
Const TCIF_PARAM=8
Const TCIF_STATE=16

'TreeView Control
Extern
	Function bmx_win32_TVITEMW_new:Byte Ptr()
	Function bmx_win32_TVITEMW_free(handle:Byte Ptr)
	Function bmx_win32_TVITEMW_Setmask(handle:Byte Ptr, mask:UInt)
	Function bmx_win32_TVITEMW_SethItem(handle:Byte Ptr, hItem:Byte Ptr)
	Function bmx_win32_TVITEMW_Setstate(handle:Byte Ptr, state:UInt)
	Function bmx_win32_TVITEMW_SetstateMask(handle:Byte Ptr, stateMask:UInt)
	Function bmx_win32_TVITEMW_SetpszText(handle:Byte Ptr, pszText:Short Ptr)
	Function bmx_win32_TVITEMW_SetcchTextMax(handle:Byte Ptr, cchTextMax:Int)
	Function bmx_win32_TVITEMW_SetiImage(handle:Byte Ptr, iImage:Int)
	Function bmx_win32_TVITEMW_SetiSelectedImage(handle:Byte Ptr, iSelectedImage:Int)
	Function bmx_win32_TVITEMW_SetcChildren(handle:Byte Ptr, cChildren:Int)
	Function bmx_win32_TVITEMW_SetlParam(handle:Byte Ptr, lp:LParam)
	Function bmx_win32_TVITEMW_mask:UInt(handle:Byte Ptr)
	Function bmx_win32_TVITEMW_hItem:Byte Ptr(handle:Byte Ptr)
	Function bmx_win32_TVITEMW_pszText:Short Ptr(handle:Byte Ptr)
	Function bmx_win32_TVITEMW_iImage:Int(handle:Byte Ptr)
	Function bmx_win32_TVITEMW_lParam:Byte Ptr(handle:Byte Ptr)
End Extern
Type TVITEMW
	Field itemPtr:Byte Ptr
	
	Method New()
		itemPtr = bmx_win32_TVITEMW_new()
	End Method

	Method Delete()
		Free()
	End Method
	
	Method Free()
		If itemPtr Then
			bmx_win32_TVITEMW_free(itemPtr)
			itemPtr = Null
		End If
	End Method
	
	Method Setmask(mask:UInt)
		bmx_win32_TVITEMW_Setmask(itemPtr, mask)
	End Method
	
	Method SethItem(hItem:Byte Ptr)
		bmx_win32_TVITEMW_SethItem(itemPtr, hItem)
	End Method
	
	Method Setstate(state:UInt)
		bmx_win32_TVITEMW_Setstate(itemPtr, state)
	End Method
	
	Method SetstateMask(stateMask:UInt)
		bmx_win32_TVITEMW_SetstateMask(itemPtr, stateMask)
	End Method
	
	Method SetpszText(pszText:Short Ptr)
		bmx_win32_TVITEMW_SetpszText(itemPtr, pszText)
	End Method
	
	Method SetcchTextMax(cchTextMax:Int)
		bmx_win32_TVITEMW_SetcchTextMax(itemPtr, cchTextMax)
	End Method
	
	Method SetiImage(iImage:Int)
		bmx_win32_TVITEMW_SetiImage(itemPtr, iImage)
	End Method
	
	Method SetiSelectedImage(iSelectedImage:Int)
		bmx_win32_TVITEMW_SetiSelectedImage(itemPtr, iSelectedImage)
	End Method
	
	Method SetcChildren(cChildren:Int)
		bmx_win32_TVITEMW_SetcChildren(itemPtr, cChildren)
	End Method
	
	Method SetlParam(lp:LParam)
		bmx_win32_TVITEMW_SetlParam(itemPtr, lp)
	End Method
	
	Method mask:UInt()
		Return bmx_win32_TVITEMW_mask(itemPtr)
	End Method
	
	Method hItem:Byte Ptr()
		Return bmx_win32_TVITEMW_hItem(itemPtr)
	End Method
	
	Method pszText:Short Ptr()
		Return bmx_win32_TVITEMW_pszText(itemPtr)
	End Method
	
	Method iImage:Int()
		Return bmx_win32_TVITEMW_iImage(itemPtr)
	End Method
	
	Method LParam:Byte Ptr()
		Return bmx_win32_TVITEMW_lParam(itemPtr)
	End Method
'	Field mask
'	Field hItem
'	Field state
'	Field stateMask
'	Field pszText:Short Ptr
'	Field cchTextMax
'	Field iImage
'	Field iSelectedImage
'	Field cChildren
'	Field lParam
'	Field iIntegral
End Type

Extern
	Function bmx_win32_TVINSERTSTRUCTW_new:Byte Ptr()
	Function bmx_win32_TVINSERTSTRUCTW_free(handle:Byte Ptr)
	Function bmx_win32_TVINSERTSTRUCTW_SethParent(handle:Byte Ptr, hParent:Byte Ptr)
	Function bmx_win32_TVINSERTSTRUCTW_SethInsertAfter(handle:Byte Ptr, hInsertAfter:Byte Ptr)
	Function bmx_win32_TVINSERTSTRUCTW_Setitem_mask(handle:Byte Ptr, item_mask:UInt)
	Function bmx_win32_TVINSERTSTRUCTW_Setitem_hItem(handle:Byte Ptr, item_hItem:Byte Ptr)
	Function bmx_win32_TVINSERTSTRUCTW_Setitem_state(handle:Byte Ptr, item_state:UInt)
	Function bmx_win32_TVINSERTSTRUCTW_Setitem_stateMask(handle:Byte Ptr, item_stateMask:UInt)
	Function bmx_win32_TVINSERTSTRUCTW_Setitem_pszText(handle:Byte Ptr, item_pszText:Short Ptr)
	Function bmx_win32_TVINSERTSTRUCTW_Setitem_cchTextMax(handle:Byte Ptr, item_cchTextMax:Int)
	Function bmx_win32_TVINSERTSTRUCTW_Setitem_iImage(handle:Byte Ptr, item_iImage:Int)
	Function bmx_win32_TVINSERTSTRUCTW_Setitem_iSelectedImage(handle:Byte Ptr, item_iSelectedImage:Int)
	Function bmx_win32_TVINSERTSTRUCTW_Setitem_cChildren(handle:Byte Ptr, item_cChildren:Int)
	Function bmx_win32_TVINSERTSTRUCTW_Setitem_lParam(handle:Byte Ptr, item_lParam:Byte Ptr)
	Function bmx_win32_TVINSERTSTRUCTW_item_mask:UInt(handle:Byte Ptr)
	Function bmx_win32_TVINSERTSTRUCTW_item_iImage:Int(handle:Byte Ptr)
	Function bmx_win32_TVINSERTSTRUCTW_item_lparam:Byte Ptr(handle:Byte Ptr)
	Function bmx_win32_TVINSERTSTRUCTW_item_pszText:Short Ptr(handle:Byte Ptr)
End Extern
Type TVINSERTSTRUCTW
	Field structPtr:Byte Ptr
	
	Method New()
		structPtr = bmx_win32_TVINSERTSTRUCTW_new()
	End Method

	Method Delete()
		Free()
	End Method
	
	Method Free()
		If structPtr Then
			bmx_win32_TVINSERTSTRUCTW_free(structPtr)
			structPtr = Null
		End If
	End Method
	
	Method SethParent(hParent:Byte Ptr)
		bmx_win32_TVINSERTSTRUCTW_SethParent(structPtr, hParent)
	End Method
	
	Method SethInsertAfter(hInsertAfter:Byte Ptr)
		bmx_win32_TVINSERTSTRUCTW_SethInsertAfter(structPtr, hInsertAfter)
	End Method
	
	Method Setitem_mask(item_mask:UInt)
		bmx_win32_TVINSERTSTRUCTW_Setitem_mask(structPtr, item_mask)
	End Method
	
	Method Setitem_hItem(item_hItem:Byte Ptr)
		bmx_win32_TVINSERTSTRUCTW_Setitem_hItem(structPtr, item_hItem)
	End Method
	
	Method Setitem_state(item_state:UInt)
		bmx_win32_TVINSERTSTRUCTW_Setitem_state(structPtr, item_state)
	End Method
	
	Method Setitem_stateMask(item_stateMask:UInt)
		bmx_win32_TVINSERTSTRUCTW_Setitem_stateMask(structPtr, item_stateMask)
	End Method
	
	Method Setitem_pszText(item_pszText:Short Ptr)
		bmx_win32_TVINSERTSTRUCTW_Setitem_pszText(structPtr, item_pszText)
	End Method
	
	Method Setitem_cchTextMax(item_cchTextMax:Int)
		bmx_win32_TVINSERTSTRUCTW_Setitem_cchTextMax(structPtr, item_cchTextMax)
	End Method
	
	Method Setitem_iImage(item_iImage:Int)
		bmx_win32_TVINSERTSTRUCTW_Setitem_iImage(structPtr, item_iImage)
	End Method
	
	Method Setitem_iSelectedImage(item_iSelectedImage:Int)
		bmx_win32_TVINSERTSTRUCTW_Setitem_iSelectedImage(structPtr, item_iSelectedImage)
	End Method
	
	Method Setitem_cChildren(item_cChildren:Int)
		bmx_win32_TVINSERTSTRUCTW_Setitem_cChildren(structPtr, item_cChildren)
	End Method
	
	Method Setitem_lParam(item_lParam:Byte Ptr)
		bmx_win32_TVINSERTSTRUCTW_Setitem_lParam(structPtr, item_lParam)
	End Method
	
	Method item_mask:UInt()
		Return bmx_win32_TVINSERTSTRUCTW_item_mask(structPtr)
	End Method
	
	Method item_iImage:Int()
		Return bmx_win32_TVINSERTSTRUCTW_item_iImage(structPtr)
	End Method
	
	Method item_lparam:Byte Ptr()
		Return bmx_win32_TVINSERTSTRUCTW_item_lparam(structPtr)
	End Method
	
	Method item_pszText:Short Ptr()
		Return bmx_win32_TVINSERTSTRUCTW_item_pszText(structPtr)
	End Method
	
'	Field hParent
'	Field hInsertAfter
' TVITEMW
'	Field item_mask
'	Field item_hItem
'	Field item_state
'	Field item_stateMask
'	Field item_pszText:Short Ptr
'	Field item_cchTextMax
 '	Field item_iImage
'	Field item_iSelectedImage
'	Field item_cChildren
'	Field item_lParam
'	Field itemx_iIntegral
End Type

Const I_CHILDRENCALLBACK=-1

Const TVS_HASBUTTONS=$0001
Const TVS_HASLINES=$0002
Const TVS_LINESATROOT=$0004
Const TVS_EDITLABELS=$0008
Const TVS_DISABLEDRAGDROP=$0010
Const TVS_SHOWSELALWAYS=$0020
Const TVS_RTLREADING=$0040
Const TVS_NOTOOLTIPS=$0080
Const TVS_CHECKBOXES=$0100
Const TVS_TRACKSELECT=$0200
Const TVS_SINGLEEXPAND=$0400
Const TVS_INFOTIP=$0800
Const TVS_FULLROWSELECT=$1000
Const TVS_NOSCROLL=$2000
Const TVS_NONEVENHEIGHT=$4000
Const TVS_NOHSCROLL=$8000		'TVS_NOSCROLL overrides this

Const TVIF_TEXT=$0001
Const TVIF_IMAGE=$0002
Const TVIF_PARAM=$0004
Const TVIF_STATE=$0008
Const TVIF_HANDLE=$0010
Const TVIF_SELECTEDIMAGE=$0020
Const TVIF_CHILDREN=$0040
Const TVIF_INTEGRAL=$0080
Const TVIS_SELECTED=$0002
Const TVIS_CUT=$0004
Const TVIS_DROPHILITED=$0008
Const TVIS_BOLD=$0010
Const TVIS_EXPANDED=$0020
Const TVIS_EXPANDEDONCE=$0040
Const TVIS_EXPANDPARTIAL=$0080

Const TVIS_OVERLAYMASK=$0F00
Const TVIS_STATEIMAGEMASK=$F000
Const TVIS_USERMASK=$F000

' StaticControl

Const SS_LEFT=$00000000
Const SS_CENTER=$00000001
Const SS_RIGHT=$00000002
Const SS_ICON=$00000003
Const SS_BLACKRECT=$00000004
Const SS_GRAYRECT=$00000005
Const SS_WHITERECT=$00000006
Const SS_BLACKFRAME=$00000007
Const SS_GRAYFRAME=$00000008
Const SS_WHITEFRAME=$00000009
Const SS_USERITEM=$0000000A
Const SS_SIMPLE=$0000000B
Const SS_LEFTNOWORDWRAP=$0000000C

Const SS_OWNERDRAW=$0000000D
Const SS_BITMAP=$0000000E
Const SS_ENHMETAFILE=$0000000F
Const SS_ETCHEDHORZ=$00000010
Const SS_ETCHEDVERT=$00000011
Const SS_ETCHEDFRAME=$00000012
Const SS_TYPEMASK=$0000001F

Const SS_REALSIZECONTROL=$00000040

Const SS_NOPREFIX=$00000080		' Don't do "&" character translation

Const SS_NOTIFY=$00000100
Const SS_CENTERIMAGE=$00000200
Const SS_RIGHTJUST=$00000400
Const SS_REALSIZEIMAGE=$00000800
Const SS_SUNKEN=$00001000
Const SS_EDITCONTROL=$00002000
Const SS_ENDELLIPSIS=$00004000
Const SS_PATHELLIPSIS=$00008000
Const SS_WORDELLIPSIS=$0000C000
Const SS_ELLIPSISMASK=$0000C000

'StaticControlMesages

Const STM_SETICON=$0170
Const STM_GETICON=$0171
Const STM_SETIMAGE=$0172
Const STM_GETIMAGE=$0173

Const STN_CLICKED=0
Const STN_DBLCLK=1
Const STN_ENABLE=2
Const STN_DISABLE=3

Const STM_MSGMAX=$0174

Const SBS_HORZ=$0000
Const SBS_VERT=$0001
Const SBS_TOPALIGN=$0002
Const SBS_LEFTALIGN=$0002
Const SBS_BOTTOMALIGN=$0004
Const SBS_RIGHTALIGN=$0004
Const SBS_SIZEBOXTOPLEFTALIGN=$0002
Const SBS_SIZEBOXBOTTOMRIGHTALIGN=$0004
Const SBS_SIZEBOX=$0008
Const SBS_SIZEGRIP=$0010

' Scroll Bar

Const SBM_SETPOS=$00E0'Notinwin3.1
Const SBM_GETPOS=$00E1'Notinwin3.1
Const SBM_SETRANGE=$00E2'Notinwin3.1
Const SBM_SETRANGEREDRAW=$00E6'Notinwin3.1
Const SBM_GETRANGE=$00E3'Notinwin3.1
Const SBM_ENABLE_ARROWS=$00E4'Notinwin3.1
Const SBM_SETSCROLLINFO=$00E9
Const SBM_GETSCROLLINFO=$00EA
Const SBM_GETSCROLLBARINFO=$00EB

Const TRACKBAR_CLASS:String="msctls_trackbar32"

Const TBS_AUTOTICKS=$0001
Const TBS_VERT=$0002
Const TBS_HORZ=$0000
Const TBS_TOP=$0004
Const TBS_BOTTOM=$0000
Const TBS_LEFT=$0004
Const TBS_RIGHT=$0000
Const TBS_BOTH=$0008
Const TBS_NOTICKS=$0010
Const TBS_ENABLESELRANGE=$0020
Const TBS_FIXEDLENGTH=$0040
Const TBS_NOTHUMB=$0080
Const TBS_TOOLTIPS=$0100
Const TBS_REVERSED=$0200
Const TBS_DOWNISLEFT=$0400

Const TBM_GETPOS=(WM_USER)
Const TBM_GETRANGEMIN=(WM_USER+1)
Const TBM_GETRANGEMAX=(WM_USER+2)
Const TBM_GETTIC=(WM_USER+3)
Const TBM_SETTIC=(WM_USER+4)
Const TBM_SETPOS=(WM_USER+5)
Const TBM_SETRANGE=(WM_USER+6)
Const TBM_SETRANGEMIN=(WM_USER+7)
Const TBM_SETRANGEMAX=(WM_USER+8)
Const TBM_CLEARTICS=(WM_USER+9)
Const TBM_SETSEL=(WM_USER+10)
Const TBM_SETSELSTART=(WM_USER+11)
Const TBM_SETSELEND=(WM_USER+12)
Const TBM_GETPTICS=(WM_USER+14)
Const TBM_GETTICPOS=(WM_USER+15)
Const TBM_GETNUMTICS=(WM_USER+16)
Const TBM_GETSELSTART=(WM_USER+17)
Const TBM_GETSELEND=(WM_USER+18)
Const TBM_CLEARSEL=(WM_USER+19)
Const TBM_SETTICFREQ=(WM_USER+20)
Const TBM_SETPAGESIZE=(WM_USER+21)
Const TBM_GETPAGESIZE=(WM_USER+22)
Const TBM_SETLINESIZE=(WM_USER+23)
Const TBM_GETLINESIZE=(WM_USER+24)
Const TBM_GETTHUMBRECT=(WM_USER+25)
Const TBM_GETCHANNELRECT=(WM_USER+26)
Const TBM_SETTHUMBLENGTH=(WM_USER+27)
Const TBM_GETTHUMBLENGTH=(WM_USER+28)

Const TBM_SETTOOLTIPS=(WM_USER+29)
Const TBM_GETTOOLTIPS=(WM_USER+30)
Const TBM_SETTIPSIDE=(WM_USER+31)

Const TBTS_TOP=0
Const TBTS_LEFT=1
Const TBTS_BOTTOM=2
Const TBTS_RIGHT=3

Const TBM_SETBUDDY=(WM_USER+32)
Const TBM_GETBUDDY=(WM_USER+33)

'Const TBM_SETUNICODEFORMAT=CCM_SETUNICODEFORMAT
'Const TBM_GETUNICODEFORMAT=CCM_GETUNICODEFORMAT

Const TB_LINEUP=0
Const TB_LINEDOWN=1
Const TB_PAGEUP=2
Const TB_PAGEDOWN=3
Const TB_THUMBPOSITION=4
Const TB_THUMBTRACK=5
Const TB_TOP=6
Const TB_BOTTOM=7
Const TB_ENDTRACK=8

Const TBCD_TICS=$0001
Const TBCD_THUMB=$0002
Const TBCD_CHANNEL=$0003

Const UD_MAXVAL=$7fff
Const UD_MINVAL=(-UD_MAXVAL)

Const UDS_WRAP=$0001
Const UDS_SETBUDDYINT=$0002
Const UDS_ALIGNRIGHT=$0004
Const UDS_ALIGNLEFT=$0008
Const UDS_AUTOBUDDY=$0010
Const UDS_ARROWKEYS=$0020
Const UDS_HORZ=$0040
Const UDS_NOTHOUSANDS=$0080
Const UDS_HOTTRACK=$0100

Const UDM_SETRANGE=(WM_USER+101)
Const UDM_GETRANGE=(WM_USER+102)
Const UDM_SETPOS=(WM_USER+103)
Const UDM_GETPOS=(WM_USER+104)
Const UDM_SETBUDDY=(WM_USER+105)
Const UDM_GETBUDDY=(WM_USER+106)
Const UDM_SETACCEL=(WM_USER+107)
Const UDM_GETACCEL=(WM_USER+108)
Const UDM_SETBASE=(WM_USER+109)
Const UDM_GETBASE=(WM_USER+110)
Const UDM_SETRANGE32=(WM_USER+111)
Const UDM_GETRANGE32=(WM_USER+112)
'Const UDM_SETUNICODEFORMAT=CCM_SETUNICODEFORMAT
'Const UDM_GETUNICODEFORMAT=CCM_GETUNICODEFORMAT

Const UDM_SETPOS32=(WM_USER+113)
Const UDM_GETPOS32=(WM_USER+114)

Const ESB_ENABLE_BOTH=0
Const ESB_DISABLE_BOTH=3
Const ESB_DISABLE_LEFT=1
Const ESB_DISABLE_RIGHT=2
Const ESB_DISABLE_UP=1
Const ESB_DISABLE_DOWN=2
Const ESB_DISABLE_LTUP=ESB_DISABLE_LEFT
Const ESB_DISABLE_RTDN=ESB_DISABLE_RIGHT

' ProgressBar
Const PBS_SMOOTH=01
Const PBS_VERTICAL=4
Const PBM_SETRANGE=(WM_USER+1)
Const PBM_SETPOS=(WM_USER+2)
Const PBM_DELTAPOS=(WM_USER+3)
Const PBM_SETSTEP=(WM_USER+4)
Const PBM_STEPIT=(WM_USER+5)

Const PBM_SETRANGE32=(WM_USER+6)

Const PBM_GETRANGE=(WM_USER+7)
Const PBM_GETPOS=(WM_USER+8)

Const PBM_SETBARCOLOR=(WM_USER+9)
'Const PBM_SETBKCOLOR=CCM_SETBKCOLOR
Const PBS_MARQUEE=8
Const PBM_SETMARQUEE=(WM_USER+10)

Const IDOK=1
Const IDCANCEL=2
Const IDABORT=3
Const IDRETRY=4
Const IDIGNORE=5
Const IDYES=6
Const IDNO=7
Const IDCLOSE=8
Const IDHELP=9
Const IDTRYAGAIN=10
Const IDCONTINUE=11
Const IDTIMEOUT=32000

Const ICC_LISTVIEW_CLASSES=1	' listview, header
Const ICC_TREEVIEW_CLASSES=2	' treeview, tooltips
Const ICC_BAR_CLASSES=4			' toolbar, statusbar, trackbar, tooltips
Const ICC_TAB_CLASSES=8			' tab, tooltips
Const ICC_UPDOWN_CLASS=$10		' updown
Const ICC_PROGRESS_CLASS=$20	' progress
Const ICC_HOTKEY_CLASS=$40		' hotkey
Const ICC_ANIMATE_CLASS=$80		' animate
Const ICC_WIN95_CLASSES=$ff
Const ICC_DATE_CLASSES=$100		' month picker, date picker, time picker, updown
Const ICC_USEREX_CLASSES=$200	' comboex
Const ICC_COOL_CLASSES=$400		' rebar (coolbar) control

Const ICC_INTERNET_CLASSES=$800
Const ICC_PAGESCROLLER_CLASS=$1000   ' page scroller
Const ICC_NATIVEFNTCTL_CLASS=$2000   ' native font control

Const ICC_STANDARD_CLASSES=$4000
Const ICC_LINK_CLASS=$8000

Extern
	Function bmx_win32_TINITCOMMONCONTROLSEX_new:Byte Ptr()
	Function bmx_win32_TINITCOMMONCONTROLSEX_free(handle:Byte Ptr)
	Function bmx_win32_TINITCOMMONCONTROLSEX_SetdwICC(handle:Byte Ptr, dwICC:Int)
End Extern

Type TINITCOMMONCONTROLSEX
	Field controlPtr:Byte Ptr
	
	Method New()
		controlPtr = bmx_win32_TINITCOMMONCONTROLSEX_new()
	End Method
	
	Method Delete()
		Free()
	End Method
	
	Method Free()
		If controlPtr Then
			bmx_win32_TINITCOMMONCONTROLSEX_free(controlPtr)
			controlPtr = Null
		End If
	End Method
	
	Method SetdwICC(dwICC:Int)
		bmx_win32_TINITCOMMONCONTROLSEX_SetdwICC(controlPtr, dwICC)
	End Method

	'Field	dwSize
	'Field	dwICC
End Type


' TreeView messages

Const TVI_ROOT:Size_T=$FFFF0000
Const TVI_FIRST:Size_T=$FFFF0001
Const TVI_LAST:Size_T=$FFFF0002
Const TVI_SORT:Size_T=$FFFF0003

Const TV_FIRST=$1100
Const TVM_INSERTITEMA=TV_FIRST+0
Const TVM_INSERTITEMW=TV_FIRST+50
Const TVM_DELETEITEM=TV_FIRST+1
Const TVM_EXPAND=TV_FIRST+2

Const TVE_COLLAPSE=$0001
Const TVE_EXPAND=$0002
Const TVE_TOGGLE=$0003
Const TVE_EXPANDPARTIAL=$4000
Const TVE_COLLAPSERESET=$8000

Const TVM_GETITEMRECT=TV_FIRST+4
Const TVM_GETCOUNT=TV_FIRST+5
Const TVM_GETINDENT=TV_FIRST+6
Const TVM_SETINDENT=TV_FIRST+7
Const TVM_GETIMAGELIST=TV_FIRST+8

Const TVSIL_NORMAL=0
Const TVSIL_STATE=2

Const TVM_SETIMAGELIST=TV_FIRST+9
Const TVM_GETNEXTITEM=TV_FIRST+10

Const TVGN_ROOT=$0000
Const TVGN_NEXT=$0001
Const TVGN_PREVIOUS=$0002
Const TVGN_PARENT=$0003
Const TVGN_CHILD=$0004
Const TVGN_FIRSTVISIBLE=$0005
Const TVGN_NEXTVISIBLE=$0006
Const TVGN_PREVIOUSVISIBLE=$0007
Const TVGN_DROPHILITE=$0008
Const TVGN_CARET=$0009

Const TVGN_LASTVISIBLE=$000A

Const TVSI_NOSINGLEEXPAND=$8000 ' Should Not conflict with TVGN flags.

Const TVM_SELECTITEM=TV_FIRST+11
Const TVM_GETITEMA=TV_FIRST+12
Const TVM_GETITEMW=TV_FIRST+62

Const TVM_SETITEMA=TV_FIRST+13
Const TVM_SETITEMW=TV_FIRST+63

Const TVM_EDITLABELA=TV_FIRST+14
Const TVM_EDITLABELW=TV_FIRST+65

Const TVM_GETEDITCONTROL=TV_FIRST+15

Const TVM_GETVISIBLECOUNT=TV_FIRST+16
Const TVM_HITTEST=TV_FIRST+17

Const TVHT_NOWHERE=$0001
Const TVHT_ONITEMICON=$0002
Const TVHT_ONITEMLABEL=$0004

Const TVHT_ONITEMINDENT=$0008
Const TVHT_ONITEMBUTTON=$0010
Const TVHT_ONITEMRIGHT=$0020
Const TVHT_ONITEMSTATEICON=$0040
Const TVHT_ONITEM=TVHT_ONITEMICON | TVHT_ONITEMLABEL | TVHT_ONITEMSTATEICON

Const TVHT_ABOVE=$0100
Const TVHT_BELOW=$0200
Const TVHT_TORIGHT=$0400
Const TVHT_TOLEFT=$0800

Const TVM_CREATEDRAGIMAGE=TV_FIRST+18
Const TVM_SORTCHILDREN=TV_FIRST+19
Const TVM_ENSUREVISIBLE=TV_FIRST+20
Const TVM_SORTCHILDRENCB=TV_FIRST+21
Const TVM_ENDEDITLABELNOW=TV_FIRST+22
Const TVM_GETISEARCHSTRINGA=TV_FIRST+23
Const TVM_GETISEARCHSTRINGW=TV_FIRST+64

Const TVM_SETTOOLTIPS=TV_FIRST+24
Const TVM_GETTOOLTIPS=TV_FIRST+25

Const TVM_SETINSERTMARK=TV_FIRST+26

Const TVM_SETITEMHEIGHT=TV_FIRST+27
Const TVM_GETITEMHEIGHT=TV_FIRST+28
Const TVM_SETBKCOLOR=TV_FIRST+29
Const TVM_SETTEXTCOLOR=TV_FIRST+30
Const TVM_GETBKCOLOR=TV_FIRST+31
Const TVM_GETTEXTCOLOR=TV_FIRST+32
Const TVM_SETSCROLLTIME=TV_FIRST+33
Const TVM_GETSCROLLTIME=TV_FIRST+34
Const TVM_SETINSERTMARKCOLOR=TV_FIRST+37


Extern
	Function bmx_win32_TOOLINFOW_new:Byte Ptr()
	Function bmx_win32_TOOLINFOW_free(handle:Byte Ptr)
	Function bmx_win32_TOOLINFOW_SetuFlags(handle:Byte Ptr, uFlags:UInt)
	Function bmx_win32_TOOLINFOW_Sethwnd(handle:Byte Ptr, hwnd:Byte Ptr)
	Function bmx_win32_TOOLINFOW_SetuId(handle:Byte Ptr, uId:Byte Ptr)
	Function bmx_win32_TOOLINFOW_Sethinst(handle:Byte Ptr, hinst:Byte Ptr)
	Function bmx_win32_TOOLINFOW_SetlpszText(handle:Byte Ptr, lpszText:Short Ptr)
	Function bmx_win32_TOOLINFOW_rect:Int Ptr(handle:Byte Ptr)
	Function bmx_win32_TOOLINFOW_lpszText:Short Ptr(handle:Byte Ptr)
End Extern

Type TOOLINFOW

	Field infoPtr:Byte Ptr
	
	Method New()
		infoPtr = bmx_win32_TOOLINFOW_new()
	End Method
	
	Method Delete()
		Free()
	End Method
	
	Method Free()
		If infoPtr Then
			bmx_win32_TOOLINFOW_free(infoPtr)
			infoPtr = Null
		End If
	End Method
	
	Method SetuFlags(uFlags:UInt)
		bmx_win32_TOOLINFOW_SetuFlags(infoPtr, uFlags)
	End Method
	
	Method Sethwnd(hwnd:Byte Ptr)
		bmx_win32_TOOLINFOW_Sethwnd(infoPtr, hwnd)
	End Method
	
	Method SetuId(uId:Byte Ptr)
		bmx_win32_TOOLINFOW_SetuId(infoPtr, uId)
	End Method
	
	Method Sethinst(hinst:Byte Ptr)
		bmx_win32_TOOLINFOW_Sethinst(infoPtr, hinst)
	End Method
	
	Method SetlpszText(lpszText:Short Ptr)
		bmx_win32_TOOLINFOW_SetlpszText(infoPtr, lpszText)
	End Method
	
	Method rect:Int Ptr()
		Return bmx_win32_TOOLINFOW_rect(infoPtr)
	End Method
	
	Method lpszText:Short Ptr()
		Return bmx_win32_TOOLINFOW_lpszText(infoPtr)
	End Method
	
'	Field cbSize
'	Field uFlags
'	Field hwnd
'	Field uId
'	Field rect_left,rect_top,rect_right,rect_bottom
'	Field hinst
'	Field lpszText:Short Ptr
'	Field lParam
End Type

Const TTM_ACTIVATE=WM_USER+1
Const TTM_SETDELAYTIME=WM_USER+3
Const TTM_ADDTOOLA=WM_USER+4
Const TTM_ADDTOOLW=WM_USER+50
Const TTM_DELTOOLA=WM_USER+5
Const TTM_DELTOOLW=WM_USER+51
Const TTM_NEWTOOLRECTA=WM_USER+6
Const TTM_NEWTOOLRECTW=WM_USER+52
Const TTM_RELAYEVENT=WM_USER+7

Const TTM_GETTOOLINFOA=WM_USER+8
Const TTM_GETTOOLINFOW=WM_USER+53

Const TTM_SETTOOLINFOA=WM_USER+9
Const TTM_SETTOOLINFOW=WM_USER+54

Const TTM_HITTESTA=WM_USER +10
Const TTM_HITTESTW=WM_USER +55
Const TTM_GETTEXTA=WM_USER +11
Const TTM_GETTEXTW=WM_USER +56
Const TTM_UPDATETIPTEXTA=WM_USER +12
Const TTM_UPDATETIPTEXTW=WM_USER +57
Const TTM_GETTOOLCOUNT=WM_USER +13
Const TTM_ENUMTOOLSA=WM_USER +14
Const TTM_ENUMTOOLSW=WM_USER +58
Const TTM_GETCURRENTTOOLA =WM_USER+15
Const TTM_GETCURRENTTOOLW =WM_USER+59
Const TTM_WINDOWFROMPOINT =WM_USER+16

Const TTM_TRACKACTIVATE =WM_USER+17' wParam = True/False start Endlparam = LPTOOLINFO
Const TTM_TRACKPOSITION =WM_USER+18' lParam = dwPos
Const TTM_SETTIPBKCOLOR =WM_USER+19
Const TTM_SETTIPTEXTCOLOR =WM_USER+20
Const TTM_GETDELAYTIME=WM_USER+21
Const TTM_GETTIPBKCOLOR =WM_USER+22
Const TTM_GETTIPTEXTCOLOR =WM_USER+23
Const TTM_SETMAXTIPWIDTH=WM_USER+24
Const TTM_GETMAXTIPWIDTH=WM_USER+25
Const TTM_SETMARGIN =WM_USER+26' lParam = lprc
Const TTM_GETMARGIN =WM_USER+27' lParam = lprc
Const TTM_POP =WM_USER+28

Const TTM_UPDATE=WM_USER+29

Const TTM_GETBUBBLESIZE =WM_USER+30
Const TTM_ADJUSTRECT=WM_USER+31
Const TTM_SETTITLEA =WM_USER+32' wParam = TTI_*, lParam = char* szTitle
Const TTM_SETTITLEW =WM_USER+33' wParam = TTI_*, lParam = wchar* szTitle

Const TTM_POPUP =WM_USER+34
Const TTM_GETTITLE=WM_USER+35 ' wParam = 0, lParam = TTGETTITLE*

Const TTF_IDISHWND=1
Const TTF_CENTERTIP=2
Const TTF_RTLREADING=4
Const TTF_SUBCLASS=$10
Const TTF_TRACK=$20
Const TTF_ABSOLUTE=$80
Const TTF_TRANSPARENT=$100
Const TTF_PARSELINKS=$1000
Const TTF_DI_SETITEM=$8000

Const NM_FIRST=0

Const NM_OUTOFMEMORY=NM_FIRST-1
Const NM_CLICK=NM_FIRST-2' uses NMCLICK struct
Const NM_DBLCLK =NM_FIRST-3
Const NM_RETURN =NM_FIRST-4
Const NM_RCLICK =NM_FIRST-5' uses NMCLICK struct
Const NM_RDBLCLK=NM_FIRST-6
Const NM_SETFOCUS =NM_FIRST-7
Const NM_KILLFOCUS=NM_FIRST-8

Const NM_CUSTOMDRAW =NM_FIRST-12
Const NM_HOVER=NM_FIRST-13

Const NM_NCHITTEST=NM_FIRST-14 ' uses NMMOUSE struct
Const NM_KEYDOWN=NM_FIRST-15 ' uses NMKEY struct
Const NM_RELEASEDCAPTURE=NM_FIRST-16
Const NM_SETCURSOR=NM_FIRST-17 ' uses NMMOUSE struct
Const NM_CHAR =NM_FIRST-18 ' uses NMCHAR struct

Const NM_TOOLTIPSCREATED=NM_FIRST-19 ' Notify of when the tooltips window is create

Const NM_LDOWN=NM_FIRST-20
Const NM_RDOWN=NM_FIRST-21
Const NM_THEMECHANGED =NM_FIRST-22


Const TVN_FIRST=-400
Const TVN_SELCHANGINGA=TVN_FIRST-1
Const TVN_SELCHANGINGW=TVN_FIRST-50
Const TVN_SELCHANGEDA=TVN_FIRST-2
Const TVN_SELCHANGEDW=TVN_FIRST-51

Const TVC_UNKNOWN=0
Const TVC_BYMOUSE=1
Const TVC_BYKEYBOARD=2

Const TVN_GETDISPINFOA=TVN_FIRST-3
Const TVN_GETDISPINFOW=TVN_FIRST-52
Const TVN_SETDISPINFOA=TVN_FIRST-4
Const TVN_SETDISPINFOW=TVN_FIRST-53

Const TVIF_DI_SETITEM=$1000

Const TVN_ITEMEXPANDINGA=TVN_FIRST-5
Const TVN_ITEMEXPANDINGW=TVN_FIRST-54
Const TVN_ITEMEXPANDEDA=TVN_FIRST-6
Const TVN_ITEMEXPANDEDW=TVN_FIRST-55
Const TVN_BEGINDRAGA=TVN_FIRST-7
Const TVN_BEGINDRAGW=TVN_FIRST-56
Const TVN_BEGINRDRAGA=TVN_FIRST-8
Const TVN_BEGINRDRAGW=TVN_FIRST-57
Const TVN_DELETEITEMA=TVN_FIRST-9
Const TVN_DELETEITEMW=TVN_FIRST-58
Const TVN_BEGINLABELEDITA=TVN_FIRST-10
Const TVN_BEGINLABELEDITW=TVN_FIRST-59
Const TVN_ENDLABELEDITA=TVN_FIRST-11
Const TVN_ENDLABELEDITW=TVN_FIRST-60
Const TVN_KEYDOWN=TVN_FIRST-12

Const TVN_GETINFOTIPA =TVN_FIRST-13
Const TVN_GETINFOTIPW =TVN_FIRST-14
Const TVN_SINGLEEXPAND=TVN_FIRST-15

Const TVNRET_DEFAULT=0
Const TVNRET_SKIPOLD=1
Const TVNRET_SKIPNEW=2

' tab control

Const TCN_FIRST=-550
Const TCN_SELCHANGE           =(TCN_FIRST - 1)
Const TCN_SELCHANGING         =(TCN_FIRST - 2)
Const TCN_GETOBJECT           =(TCN_FIRST - 3)
Const TCN_FOCUSCHANGE         =(TCN_FIRST - 4)

' toolbar control

Const TBSTATE_CHECKED=$01
Const TBSTATE_PRESSED=$02
Const TBSTATE_ENABLED=$04
Const TBSTATE_HIDDEN=$08
Const TBSTATE_INDETERMINATE=$10
Const TBSTATE_WRAP=$20
Const TBSTATE_ELLIPSES=$40
Const TBSTATE_MARKED=$80

Const TBSTYLE_BUTTON=$0000
Const TBSTYLE_SEP=$0001
Const TBSTYLE_CHECK=$0002
Const TBSTYLE_GROUP=$0004
Const TBSTYLE_CHECKGROUP=(TBSTYLE_GROUP | TBSTYLE_CHECK)
Const TBSTYLE_DROPDOWN=$0008
Const TBSTYLE_AUTOSIZE=$0010
Const TBSTYLE_NOPREFIX=$0020
Const TBSTYLE_TOOLTIPS=$0100
Const TBSTYLE_WRAPABLE=$0200
Const TBSTYLE_ALTDRAG=$0400
Const TBSTYLE_FLAT=$0800
Const TBSTYLE_LIST=$1000
Const TBSTYLE_CUSTOMERASE=$2000
Const TBSTYLE_REGISTERDROP=$4000
Const TBSTYLE_TRANSPARENT=$8000

Const TBSTYLE_EX_DRAWDDARROWS=$00000001

Extern
	Function bmx_win32_TBBUTTON_new:Byte Ptr()
	Function bmx_win32_TBBUTTON_free(handle:Byte Ptr)
	Function bmx_win32_TBBUTTON_SetiBitmap(handle:Byte Ptr, iBitmap:Int)
	Function bmx_win32_TBBUTTON_SetidCommand(handle:Byte Ptr, idCommand:Int)
	Function bmx_win32_TBBUTTON_SetfsState(handle:Byte Ptr, fsState:Int)
	Function bmx_win32_TBBUTTON_SetfsStyle(handle:Byte Ptr, fsStyle:Int)
End Extern
Type TBBUTTON
	Field buttonPtr:Byte Ptr

	Method New()
		buttonPtr = bmx_win32_TBBUTTON_new()
	End Method
	
	Method Delete()
		Free()
	End Method
	
	Method Free()
		If buttonPtr Then
			bmx_win32_TBBUTTON_free(buttonPtr)
			buttonPtr = Null
		End If
	End Method
	
	Method SetiBitmap(iBitmap:Int)
		bmx_win32_TBBUTTON_SetiBitmap(buttonPtr, iBitmap)
	End Method
	
	Method SetidCommand(idCommand:Int)
		bmx_win32_TBBUTTON_SetidCommand(buttonPtr, idCommand)
	End Method
	
	Method SetfsState(fsState:Int)
		bmx_win32_TBBUTTON_SetfsState(buttonPtr, fsState)
	End Method
	
	Method SetfsStyle(fsStyle:Int)
		bmx_win32_TBBUTTON_SetfsStyle(buttonPtr, fsStyle)
	End Method
	
'	Field iBitmap
'	Field idCommand;
'	Field fsState:Byte
'	Field fsStyle:Byte
'	Field pad0:Byte
'	Field pad1:Byte
'	Field dwData:Byte Ptr
'	Field iString:Byte Ptr
End Type


Const BTNS_BUTTON     =TBSTYLE_BUTTON      ' =$0000
Const BTNS_SEP        =TBSTYLE_SEP         ' =$0001
Const BTNS_CHECK      =TBSTYLE_CHECK       ' =$0002
Const BTNS_GROUP      =TBSTYLE_GROUP       ' =$0004
Const BTNS_CHECKGROUP =TBSTYLE_CHECKGROUP  ' (TBSTYLE_GROUP | TBSTYLE_CHECK)
Const BTNS_DROPDOWN   =TBSTYLE_DROPDOWN    ' =$0008
Const BTNS_AUTOSIZE   =TBSTYLE_AUTOSIZE    ' =$0010; automatically calculate the cx of the button
Const BTNS_NOPREFIX   =TBSTYLE_NOPREFIX    ' =$0020; this button should Not have accel prefix

Const BTNS_SHOWTEXT   =$0040              ' ignored unless TBSTYLE_EX_MIXEDBUTTONS is set
Const BTNS_WHOLEDROPDOWN  =$0080          ' draw drop-down arrow, but without split arrow section

Const TBSTYLE_EX_MIXEDBUTTONS             =$00000008
Const TBSTYLE_EX_HIDECLIPPEDBUTTONS       =$00000010  ' don't show partially obscured buttons

Const TBSTYLE_EX_DOUBLEBUFFER             =$00000080 ' Double Buffer the toolbar

' Toolbar custom draw Return flags
Const TBCDRF_NOEDGES              =$00010000  ' Don't draw button edges
Const TBCDRF_HILITEHOTTRACK       =$00020000  ' Use color of the button bk when hottracked
Const TBCDRF_NOOFFSET             =$00040000  ' Don't offset button if pressed
Const TBCDRF_NOMARK               =$00080000  ' Don't draw default highlight of image/text for TBSTATE_MARKED
Const TBCDRF_NOETCHEDEFFECT       =$00100000  ' Don't draw etched effect for disabled items

Const TBCDRF_BLENDICON            =$00200000  ' Use ILD_BLEND50 on the icon image
Const TBCDRF_NOBACKGROUND         =$00400000  ' Use ILD_BLEND50 on the icon image

Const TB_ENABLEBUTTON         =(WM_USER + 1)
Const TB_CHECKBUTTON          =(WM_USER + 2)
Const TB_PRESSBUTTON          =(WM_USER + 3)
Const TB_HIDEBUTTON           =(WM_USER + 4)
Const TB_INDETERMINATE        =(WM_USER + 5)
Const TB_MARKBUTTON           =(WM_USER + 6)
Const TB_ISBUTTONENABLED      =(WM_USER + 9)
Const TB_ISBUTTONCHECKED      =(WM_USER + 10)
Const TB_ISBUTTONPRESSED      =(WM_USER + 11)
Const TB_ISBUTTONHIDDEN       =(WM_USER + 12)
Const TB_ISBUTTONINDETERMINATE=(WM_USER + 13)
Const TB_ISBUTTONHIGHLIGHTED  =(WM_USER + 14)
Const TB_SETSTATE             =(WM_USER + 17)
Const TB_GETSTATE             =(WM_USER + 18)
Const TB_ADDBITMAP            =(WM_USER + 19)

Const HINST_COMMCTRL          =-1

Const IDB_STD_SMALL_COLOR     =0
Const IDB_STD_LARGE_COLOR     =1
Const IDB_VIEW_SMALL_COLOR    =4
Const IDB_VIEW_LARGE_COLOR    =5
Const IDB_HIST_SMALL_COLOR    =8
Const IDB_HIST_LARGE_COLOR    =9

Const STD_CUT                 =0
Const STD_COPY                =1
Const STD_PASTE               =2
Const STD_UNDO                =3
Const STD_REDOW               =4
Const STD_DELETE              =5
Const STD_FILENEW             =6
Const STD_FILEOPEN            =7
Const STD_FILESAVE            =8
Const STD_PRINTPRE            =9
Const STD_PROPERTIES          =10
Const STD_HELP                =11
Const STD_FIND                =12
Const STD_REPLACE             =13
Const STD_PRINT               =14

Const VIEW_LARGEICONS         =0
Const VIEW_SMALLICONS         =1
Const VIEW_LIST               =2
Const VIEW_DETAILS            =3
Const VIEW_SORTNAME           =4
Const VIEW_SORTSIZE           =5
Const VIEW_SORTDATE           =6
Const VIEW_SORTTYPE           =7
Const VIEW_PARENTFOLDER       =8
Const VIEW_NETCONNECT         =9
Const VIEW_NETDISCONNECT      =10
Const VIEW_NEWFOLDER          =11
Const VIEW_VIEWMENU           =12

Const HIST_BACK               =0
Const HIST_FORWARD            =1
Const HIST_FAVORITES          =2
Const HIST_ADDTOFAVORITES     =3
Const HIST_VIEWTREE           =4


Const TB_ADDBUTTONS           =(WM_USER + 20)
Const TB_INSERTBUTTON         =(WM_USER + 21)
Const TB_DELETEBUTTON         =(WM_USER + 22)
Const TB_GETBUTTON            =(WM_USER + 23)
Const TB_BUTTONCOUNT          =(WM_USER + 24)
Const TB_COMMANDTOINDEX       =(WM_USER + 25)

Const TB_SAVERESTOREA         =(WM_USER + 26)
Const TB_SAVERESTOREW         =(WM_USER + 76)
Const TB_CUSTOMIZE            =(WM_USER + 27)
Const TB_ADDSTRINGA           =(WM_USER + 28)
Const TB_ADDSTRINGW           =(WM_USER + 77)
Const TB_GETITEMRECT          =(WM_USER + 29)
Const TB_BUTTONSTRUCTSIZE     =(WM_USER + 30)
Const TB_SETBUTTONSIZE        =(WM_USER + 31)
Const TB_SETBITMAPSIZE        =(WM_USER + 32)
Const TB_AUTOSIZE             =(WM_USER + 33)
Const TB_GETTOOLTIPS          =(WM_USER + 35)
Const TB_SETTOOLTIPS          =(WM_USER + 36)
Const TB_SETPARENT            =(WM_USER + 37)
Const TB_SETROWS              =(WM_USER + 39)
Const TB_GETROWS              =(WM_USER + 40)
Const TB_SETCMDID             =(WM_USER + 42)
Const TB_CHANGEBITMAP         =(WM_USER + 43)
Const TB_GETBITMAP            =(WM_USER + 44)
Const TB_GETBUTTONTEXTA       =(WM_USER + 45)
Const TB_GETBUTTONTEXTW       =(WM_USER + 75)
Const TB_REPLACEBITMAP        =(WM_USER + 46)

Const TB_SETINDENT            =(WM_USER + 47)
Const TB_SETIMAGELIST         =(WM_USER + 48)
Const TB_GETIMAGELIST         =(WM_USER + 49)
Const TB_LOADIMAGES           =(WM_USER + 50)
Const TB_GETRECT              =(WM_USER + 51) ' wParam is the Cmd instead of index
Const TB_SETHOTIMAGELIST      =(WM_USER + 52)
Const TB_GETHOTIMAGELIST      =(WM_USER + 53)
Const TB_SETDISABLEDIMAGELIST =(WM_USER + 54)
Const TB_GETDISABLEDIMAGELIST =(WM_USER + 55)
Const TB_SETSTYLE             =(WM_USER + 56)
Const TB_GETSTYLE             =(WM_USER + 57)
Const TB_GETBUTTONSIZE        =(WM_USER + 58)
Const TB_SETBUTTONWIDTH       =(WM_USER + 59)
Const TB_SETMAXTEXTROWS       =(WM_USER + 60)
Const TB_GETTEXTROWS          =(WM_USER + 61)

Const TB_GETOBJECT            =(WM_USER + 62)  ' wParam == IID, lParam void **ppv
Const TB_GETHOTITEM           =(WM_USER + 71)
Const TB_SETHOTITEM           =(WM_USER + 72)  ' wParam == iHotItem
Const TB_SETANCHORHIGHLIGHT   =(WM_USER + 73)  ' wParam == True/False
Const TB_GETANCHORHIGHLIGHT   =(WM_USER + 74)
Const TB_MAPACCELERATORA      =(WM_USER + 78)  ' wParam == ch, lParam Int * pidBtn


Const TBIMHT_AFTER      =1 ' True = insert After iButton, otherwise before
Const TBIMHT_BACKGROUND =2 ' True iff missed buttons completely

Const TB_GETINSERTMARK        =(WM_USER + 79)  ' lParam == LPTBINSERTMARK
Const TB_SETINSERTMARK        =(WM_USER + 80)  ' lParam == LPTBINSERTMARK
Const TB_INSERTMARKHITTEST    =(WM_USER + 81)  ' wParam == LPPOINT lParam == LPTBINSERTMARK
Const TB_MOVEBUTTON           =(WM_USER + 82)
Const TB_GETMAXSIZE           =(WM_USER + 83)  ' lParam == LPSIZE
Const TB_SETEXTENDEDSTYLE     =(WM_USER + 84)  ' For TBSTYLE_EX_*
Const TB_GETEXTENDEDSTYLE     =(WM_USER + 85)  ' For TBSTYLE_EX_*
Const TB_GETPADDING           =(WM_USER + 86)
Const TB_SETPADDING           =(WM_USER + 87)
Const TB_SETINSERTMARKCOLOR   =(WM_USER + 88)
Const TB_GETINSERTMARKCOLOR   =(WM_USER + 89)

'Const TB_SETCOLORSCHEME       =CCM_SETCOLORSCHEME  ' lParam is color scheme
'Const TB_GETCOLORSCHEME       =CCM_GETCOLORSCHEME      ' fills in COLORSCHEME pointed To by lParam
'Const TB_SETUNICODEFORMAT     =CCM_SETUNICODEFORMAT
'Const TB_GETUNICODEFORMAT     =CCM_GETUNICODEFORMAT

Const TB_MAPACCELERATORW      =(WM_USER + 90)  ' wParam == ch, lParam Int * pidBtn

' imagelist

Const ILC_MASK=$0001
Const ILC_COLOR=$0000
Const ILC_COLORDDB=$00FE
Const ILC_COLOR4=$0004
Const ILC_COLOR8=$0008
Const ILC_COLOR16=$0010
Const ILC_COLOR24=$0018
Const ILC_COLOR32=$0020
Const ILC_PALETTE=$0800
Const ILC_MIRROR=$2000
Const ILC_PERITEMMIRROR=$8000

' font

Const SIMULATED_FONTTYPE    =$8000
Const PRINTER_FONTTYPE      =$4000
Const SCREEN_FONTTYPE       =$2000
Const BOLD_FONTTYPE         =$0100
Const ITALIC_FONTTYPE       =$0200
Const REGULAR_FONTTYPE      =$0400

Const CCM_FIRST=$2000      ' Common control shared messages
Const CCM_SETBKCOLOR=(CCM_FIRST + 1) ' lParam is bkColor

Type COLORSCHEME
	Field dwSize
	Field clrBtnHighlight
	Field clrBtnShadow
End Type

Const CCM_SETCOLORSCHEME      =(CCM_FIRST + 2) ' lParam is color scheme
Const CCM_GETCOLORSCHEME      =(CCM_FIRST + 3) ' fills in COLORSCHEME pointed To by lParam
Const CCM_GETDROPTARGET       =(CCM_FIRST + 4)
Const CCM_SETUNICODEFORMAT    =(CCM_FIRST + 5)
Const CCM_GETUNICODEFORMAT    =(CCM_FIRST + 6)

Const CCM_SETVERSION          =(CCM_FIRST + 7)
Const CCM_GETVERSION          =(CCM_FIRST + 8)
Const CCM_SETNOTIFYWINDOW     =(CCM_FIRST + 9) ' wParam == hwndParent.

Const CCM_SETWINDOWTHEME      =(CCM_FIRST + 11)
Const CCM_DPISCALE            =(CCM_FIRST + 12) ' wParam == Awareness

' listview


Const LVM_FIRST               =$1000      ' ListView messages

'Const LVM_SETUNICODEFORMAT     CCM_SETUNICODEFORMAT
'Const LVM_GETUNICODEFORMAT     CCM_GETUNICODEFORMAT

Const LVM_GETBKCOLOR          =(LVM_FIRST + 0)
Const LVM_SETBKCOLOR          =(LVM_FIRST + 1)
Const LVM_GETIMAGELIST        =(LVM_FIRST + 2)

Const LVSIL_NORMAL            =0
Const LVSIL_SMALL             =1
Const LVSIL_STATE             =2

Const LVM_SETIMAGELIST        =(LVM_FIRST + 3)
Const LVM_GETITEMCOUNT        =(LVM_FIRST + 4)

Const LVIF_TEXT               =$0001
Const LVIF_IMAGE              =$0002
Const LVIF_PARAM              =$0004
Const LVIF_STATE              =$0008
Const LVIF_INDENT             =$0010
Const LVIF_NORECOMPUTE        =$0800
Const LVIF_GROUPID            =$0100
Const LVIF_COLUMNS            =$0200

Const LVIS_FOCUSED            =$0001
Const LVIS_SELECTED           =$0002
Const LVIS_CUT                =$0004
Const LVIS_DROPHILITED        =$0008
Const LVIS_GLOW               =$0010
Const LVIS_ACTIVATING         =$0020

Const LVIS_OVERLAYMASK        =$0F00
Const LVIS_STATEIMAGEMASK     =$F000

Extern
	Function bmx_win32_LVITEMW_new:Byte Ptr()
	Function bmx_win32_LVITEMW_free(handle:Byte Ptr)
	Function bmx_win32_LVITEMW_Setmask(handle:Byte Ptr, mask:UInt)
	Function bmx_win32_LVITEMW_SetiItem(handle:Byte Ptr, iItem:Int)
	Function bmx_win32_LVITEMW_Setstate(handle:Byte Ptr, state:UInt)
	Function bmx_win32_LVITEMW_SetstateMask(handle:Byte Ptr, stateMask:UInt)
	Function bmx_win32_LVITEMW_SetpszText(handle:Byte Ptr, pszText:Short Ptr)
	Function bmx_win32_LVITEMW_SetiImage(handle:Byte Ptr, iImage:Int)
	Function bmx_win32_LVITEMW_mask:UInt(handle:Byte Ptr)
	Function bmx_win32_LVITEMW_state:UInt(handle:Byte Ptr)
	Function bmx_win32_LVITEMW_pszText:Short Ptr(handle:Byte Ptr)
End Extern
Type LVITEMW
	Field itemPtr:Byte Ptr
	
	Method New()
		itemPtr = bmx_win32_LVITEMW_new()
	End Method

	Method Delete()
		Free()
	End Method
	
	Method Free()
		If itemPtr Then
			bmx_win32_LVITEMW_free(itemPtr)
			itemPtr = Null
		End If
	End Method
	
	Method Setmask(mask:UInt)
		bmx_win32_LVITEMW_Setmask(itemPtr, mask)
	End Method
	
	Method SetiItem(iItem:Int)
		bmx_win32_LVITEMW_SetiItem(itemPtr, iItem)
	End Method
	
	Method Setstate(state:UInt)
		bmx_win32_LVITEMW_Setstate(itemPtr, state)
	End Method

	Method SetstateMask(stateMask:UInt)
		bmx_win32_LVITEMW_SetstateMask(itemPtr, stateMask)
	End Method
	
	Method SetpszText(pszText:Short Ptr)
		bmx_win32_LVITEMW_SetpszText(itemPtr, pszText)
	End Method
	
	Method SetiImage(iImage:Int)
		bmx_win32_LVITEMW_SetiImage(itemPtr, iImage)
	End Method
	
	Method mask:UInt()
		Return bmx_win32_LVITEMW_mask(itemPtr)
	End Method
	
	Method state:UInt()
		Return bmx_win32_LVITEMW_state(itemPtr)
	End Method
	
	Method pszText:Short Ptr()
		Return bmx_win32_LVITEMW_pszText(itemPtr)
	End Method
	
'	Field	mask
'	Field	iItem
'	Field	iSubItem
'	Field	state
'	Field	stateMask
'	Field	pszText:Short Ptr
'	Field	cchTextMax
'	Field	iImage
'   Field	lParam
'	Field	iIndent
'	Field	iGroupId
'	Field	cColumns
'	Field	puColumns:Int Ptr
End Type

Const I_IMAGECALLBACK         =(-1)
Const I_IMAGENONE             =(-2)
Const I_COLUMNSCALLBACK       =(-1)

Const LVM_GETITEMA            =(LVM_FIRST + 5)
Const LVM_GETITEMW            =(LVM_FIRST + 75)

Const LVM_SETITEMA            =(LVM_FIRST + 6)
Const LVM_SETITEMW            =(LVM_FIRST + 76)

Const LVM_INSERTITEMA         =(LVM_FIRST + 7)
Const LVM_INSERTITEMW         =(LVM_FIRST + 77)

Const LVM_DELETEITEM          =(LVM_FIRST + 8)
Const LVM_DELETEALLITEMS      =(LVM_FIRST + 9)
Const LVM_GETCALLBACKMASK     =(LVM_FIRST + 10)
Const LVM_SETCALLBACKMASK     =(LVM_FIRST + 11)

Const LVNI_ALL                =$0000
Const LVNI_FOCUSED            =$0001
Const LVNI_SELECTED           =$0002
Const LVNI_CUT                =$0004
Const LVNI_DROPHILITED        =$0008

Const LVNI_ABOVE              =$0100
Const LVNI_BELOW              =$0200
Const LVNI_TOLEFT             =$0400
Const LVNI_TORIGHT            =$0800

Const LVM_GETNEXTITEM         =(LVM_FIRST + 12)

Const LVFI_PARAM              =$0001
Const LVFI_STRING             =$0002
Const LVFI_PARTIAL            =$0008
Const LVFI_WRAP               =$0020
Const LVFI_NEARESTXY          =$0040

Type FINDINFOW
	Field flags
    Field psz:Short Ptr
    Field LParam
    Field pt_x,pt_y
	Field vkDirection
End Type

Const LVM_FINDITEMA           =(LVM_FIRST + 13)
Const LVM_FINDITEMW           =(LVM_FIRST + 83)

Const LVIR_BOUNDS             =0
Const LVIR_ICON               =1
Const LVIR_LABEL              =2
Const LVIR_SELECTBOUNDS       =3

Const LVM_GETITEMRECT         =(LVM_FIRST + 14)
Const LVM_SETITEMPOSITION     =(LVM_FIRST + 15)
Const LVM_GETITEMPOSITION     =(LVM_FIRST + 16)
Const LVM_GETSTRINGWIDTHA     =(LVM_FIRST + 17)
Const LVM_GETSTRINGWIDTHW     =(LVM_FIRST + 87)

Const LVHT_NOWHERE            =$0001
Const LVHT_ONITEMICON         =$0002
Const LVHT_ONITEMLABEL        =$0004
Const LVHT_ONITEMSTATEICON    =$0008
Const LVHT_ONITEM             =(LVHT_ONITEMICON | LVHT_ONITEMLABEL | LVHT_ONITEMSTATEICON)

Const LVHT_ABOVE              =$0008
Const LVHT_BELOW              =$0010
Const LVHT_TORIGHT            =$0020
Const LVHT_TOLEFT             =$0040


Type LVHITTESTINFO
	Field pt_x,pt_y
	Field flags
	Field iItem
	Field iSubItem
End Type

Const LVM_HITTEST             =(LVM_FIRST + 18)
Const LVM_ENSUREVISIBLE       =(LVM_FIRST + 19)
Const LVM_SCROLL              =(LVM_FIRST + 20)
Const LVM_REDRAWITEMS         =(LVM_FIRST + 21)

Const LVA_DEFAULT             =$0000
Const LVA_ALIGNLEFT           =$0001
Const LVA_ALIGNTOP            =$0002
Const LVA_SNAPTOGRID          =$0005

Const LVM_ARRANGE             =(LVM_FIRST + 22)
Const LVM_EDITLABELA          =(LVM_FIRST + 23)
Const LVM_EDITLABELW          =(LVM_FIRST + 118)
Const LVM_GETEDITCONTROL      =(LVM_FIRST + 24)

Extern
	Function bmx_win32_LVCOLUMNW_new:Byte Ptr()
	Function bmx_win32_LVCOLUMNW_free(handle:Byte Ptr)
End Extern
Type LVCOLUMNW
	Field colPtr:Byte Ptr
	
	Method New()
		colPtr = bmx_win32_LVCOLUMNW_new()
	End Method
	
	Method Delete()
		Free()
	End Method
	
	Method Free()
		If colPtr Then
			bmx_win32_LVCOLUMNW_free(colPtr)
			colPtr = Null
		End If
	End Method

'	Field	mask
'	Field	fmt
'	Field	cx
'	Field	pszText:Short Ptr
'	Field	cchTextMax
'	Field	iSubItem
'	Field	iImage
'	Field	iOrder
End Type

Const LVCF_FMT                =$0001
Const LVCF_WIDTH              =$0002
Const LVCF_TEXT               =$0004
Const LVCF_SUBITEM            =$0008
Const LVCF_IMAGE              =$0010
Const LVCF_ORDER              =$0020

Const LVCFMT_LEFT             =$0000
Const LVCFMT_RIGHT            =$0001
Const LVCFMT_CENTER           =$0002
Const LVCFMT_JUSTIFYMASK      =$0003

Const LVCFMT_IMAGE            =$0800
Const LVCFMT_BITMAP_ON_RIGHT  =$1000
Const LVCFMT_COL_HAS_IMAGES   =$8000

Const LVM_GETCOLUMNA          =(LVM_FIRST + 25)
Const LVM_GETCOLUMNW          =(LVM_FIRST + 95)

Const LVM_SETCOLUMNA          =(LVM_FIRST + 26)
Const LVM_SETCOLUMNW          =(LVM_FIRST + 96)

Const LVM_INSERTCOLUMNA       =(LVM_FIRST + 27)
Const LVM_INSERTCOLUMNW       =(LVM_FIRST + 97)
Const LVM_DELETECOLUMN        =(LVM_FIRST + 28)
Const LVM_GETCOLUMNWIDTH      =(LVM_FIRST + 29)

Const LVSCW_AUTOSIZE          =-1
Const LVSCW_AUTOSIZE_USEHEADER = -2
Const LVM_SETCOLUMNWIDTH          =(LVM_FIRST + 30)

Const LVM_GETHEADER               =(LVM_FIRST + 31)
Const LVM_CREATEDRAGIMAGE     =(LVM_FIRST + 33)

Const LVM_GETVIEWRECT         =(LVM_FIRST + 34)
Const LVM_GETTEXTCOLOR        =(LVM_FIRST + 35)
Const LVM_SETTEXTCOLOR        =(LVM_FIRST + 36)
Const LVM_GETTEXTBKCOLOR      =(LVM_FIRST + 37)
Const LVM_SETTEXTBKCOLOR      =(LVM_FIRST + 38)
Const LVM_GETTOPINDEX         =(LVM_FIRST + 39)
Const LVM_GETCOUNTPERPAGE     =(LVM_FIRST + 40)
Const LVM_GETORIGIN           =(LVM_FIRST + 41)
Const LVM_UPDATE              =(LVM_FIRST + 42)
Const LVM_SETITEMSTATE        =(LVM_FIRST + 43)

Const LVM_GETITEMSTATE        =(LVM_FIRST + 44)
Const LVM_GETITEMTEXTA        =(LVM_FIRST + 45)
Const LVM_GETITEMTEXTW        =(LVM_FIRST + 115)

Const LVM_SETITEMTEXTA        =(LVM_FIRST + 46)
Const LVM_SETITEMTEXTW        =(LVM_FIRST + 116)

' these flags only apply To LVS_OWNERDATA listviews in report Or list mode

Const LVSICF_NOINVALIDATEALL  =$0001
Const LVSICF_NOSCROLL         =$0002

Const LVM_SETITEMCOUNT        =(LVM_FIRST + 47)
Const LVM_SORTITEMS           =(LVM_FIRST + 48)
Const LVM_SETITEMPOSITION32   =(LVM_FIRST + 49)
Const LVM_GETSELECTEDCOUNT    =(LVM_FIRST + 50)
Const LVM_GETITEMSPACING      =(LVM_FIRST + 51)
Const LVM_GETISEARCHSTRINGA   =(LVM_FIRST + 52)
Const LVM_GETISEARCHSTRINGW   =(LVM_FIRST + 117)

Const LVM_SETICONSPACING      =(LVM_FIRST + 53)

Const LVM_SETEXTENDEDLISTVIEWSTYLE =(LVM_FIRST + 54)   ' optional wParam == mask
Const LVM_GETEXTENDEDLISTVIEWSTYLE =(LVM_FIRST + 55)

Const LVS_EX_GRIDLINES        =$0001
Const LVS_EX_SUBITEMIMAGES    =$0002
Const LVS_EX_CHECKBOXES       =$0004
Const LVS_EX_TRACKSELECT      =$0008
Const LVS_EX_HEADERDRAGDROP   =$0010
Const LVS_EX_FULLROWSELECT    =$0020 ' applies To report mode only
Const LVS_EX_ONECLICKACTIVATE =$0040
Const LVS_EX_TWOCLICKACTIVATE =$0080
Const LVS_EX_FLATSB           =$0100
Const LVS_EX_REGIONAL         =$0200
Const LVS_EX_INFOTIP          =$0400 ' listview does InfoTips For you
Const LVS_EX_UNDERLINEHOT     =$0800
Const LVS_EX_UNDERLINECOLD    =$1000
Const LVS_EX_MULTIWORKAREAS   =$2000
Const LVS_EX_LABELTIP         =$4000 ' listview unfolds partly hidden labels If it does Not have infotip text
Const LVS_EX_BORDERSELECT     =$8000 ' border selection style instead of highlight
Const LVS_EX_DOUBLEBUFFER     =$00010000
Const LVS_EX_HIDELABELS       =$00020000
Const LVS_EX_SINGLEROW        =$00040000
Const LVS_EX_SNAPTOGRID       =$00080000  ' Icons automatically snap To grid.
Const LVS_EX_SIMPLESELECT     =$00100000  ' Also changes overlay rendering To top Right For icon mode.

Const LVM_GETSUBITEMRECT      =(LVM_FIRST + 56)
Const LVM_SUBITEMHITTEST      =(LVM_FIRST + 57)
Const LVM_SETCOLUMNORDERARRAY =(LVM_FIRST + 58)
Const LVM_GETCOLUMNORDERARRAY =(LVM_FIRST + 59)
Const LVM_SETHOTITEM  =(LVM_FIRST + 60)
Const LVM_GETHOTITEM  =(LVM_FIRST + 61)
Const LVM_SETHOTCURSOR  =(LVM_FIRST + 62)
Const LVM_GETHOTCURSOR  =(LVM_FIRST + 63)
Const LVM_APPROXIMATEVIEWRECT =(LVM_FIRST + 64)

Const LV_MAX_WORKAREAS         =16
Const LVM_SETWORKAREAS         =(LVM_FIRST + 65)

Const LVM_GETWORKAREAS        =(LVM_FIRST + 70)
Const LVM_GETNUMBEROFWORKAREAS  =(LVM_FIRST + 73)
Const LVM_GETSELECTIONMARK    =(LVM_FIRST + 66)
Const LVM_SETSELECTIONMARK    =(LVM_FIRST + 67)
Const LVM_SETHOVERTIME        =(LVM_FIRST + 71)
Const LVM_GETHOVERTIME        =(LVM_FIRST + 72)
Const LVM_SETTOOLTIPS       =(LVM_FIRST + 74)
Const LVM_GETTOOLTIPS       =(LVM_FIRST + 78)
Const LVM_SORTITEMSEX          =(LVM_FIRST + 81)

Const LVBKIF_SOURCE_NONE      =$0000
Const LVBKIF_SOURCE_HBITMAP   =$0001
Const LVBKIF_SOURCE_URL       =$0002
Const LVBKIF_SOURCE_MASK      =$0003
Const LVBKIF_STYLE_NORMAL     =$0000
Const LVBKIF_STYLE_TILE       =$0010
Const LVBKIF_STYLE_MASK       =$0010
Const LVBKIF_FLAG_TILEOFFSET  =$0100
Const LVBKIF_TYPE_WATERMARK   =$10000000

Const LVM_SETBKIMAGEA         =(LVM_FIRST + 68)
Const LVM_SETBKIMAGEW         =(LVM_FIRST + 138)
Const LVM_GETBKIMAGEA         =(LVM_FIRST + 69)
Const LVM_GETBKIMAGEW         =(LVM_FIRST + 139)

Const LVM_SETSELECTEDCOLUMN         =(LVM_FIRST + 140)
Const LVM_SETTILEWIDTH         =(LVM_FIRST + 141)

Const LV_VIEW_ICON        =$0000
Const LV_VIEW_DETAILS     =$0001
Const LV_VIEW_SMALLICON   =$0002
Const LV_VIEW_LIST        =$0003
Const LV_VIEW_TILE        =$0004
Const LV_VIEW_MAX         =$0004

Const LVM_SETVIEW         =(LVM_FIRST + 142)
Const LVM_GETVIEW         =(LVM_FIRST + 143)

Const LVGF_NONE           =$0000
Const LVGF_HEADER         =$0001
Const LVGF_FOOTER         =$0002
Const LVGF_STATE          =$0004
Const LVGF_ALIGN          =$0008
Const LVGF_GROUPID        =$0010

Const LVGS_NORMAL         =$0000
Const LVGS_COLLAPSED      =$0001
Const LVGS_HIDDEN         =$0002

Const LVGA_HEADER_LEFT    =$0001
Const LVGA_HEADER_CENTER  =$0002
Const LVGA_HEADER_RIGHT   =$0004  ' Don't forget to validate exclusivity
Const LVGA_FOOTER_LEFT    =$0008
Const LVGA_FOOTER_CENTER  =$0010
Const LVGA_FOOTER_RIGHT   =$0020  ' Don't forget to validate exclusivity

Const LVM_INSERTGROUP         =(LVM_FIRST + 145)
Const LVM_SETGROUPINFO         =(LVM_FIRST + 147)
Const LVM_GETGROUPINFO         =(LVM_FIRST + 149)
Const LVM_REMOVEGROUP         =(LVM_FIRST + 150)
Const LVM_MOVEGROUP         =(LVM_FIRST + 151)
Const LVM_MOVEITEMTOGROUP            =(LVM_FIRST + 154)

Const LVGMF_NONE          =$0000
Const LVGMF_BORDERSIZE    =$0001
Const LVGMF_BORDERCOLOR   =$0002
Const LVGMF_TEXTCOLOR     =$0004

Const LVM_SETGROUPMETRICS         =(LVM_FIRST + 155)
Const LVM_GETGROUPMETRICS         =(LVM_FIRST + 156)
Const LVM_ENABLEGROUPVIEW         =(LVM_FIRST + 157)

Const LVM_SORTGROUPS         =(LVM_FIRST + 158)

Const LVM_INSERTGROUPSORTED           =(LVM_FIRST + 159)
Const LVM_REMOVEALLGROUPS             =(LVM_FIRST + 160)
Const LVM_HASGROUP                    =(LVM_FIRST + 161)

Const LVTVIF_AUTOSIZE       =$0000
Const LVTVIF_FIXEDWIDTH     =$0001
Const LVTVIF_FIXEDHEIGHT    =$0002
Const LVTVIF_FIXEDSIZE      =$0003

Const LVTVIM_TILESIZE       =$0001
Const LVTVIM_COLUMNS        =$0002
Const LVTVIM_LABELMARGIN    =$0004

Const LVM_SETTILEVIEWINFO                 =(LVM_FIRST + 162)
Const LVM_GETTILEVIEWINFO                 =(LVM_FIRST + 163)
Const LVM_SETTILEINFO                     =(LVM_FIRST + 164)
Const LVM_GETTILEINFO                     =(LVM_FIRST + 165)

Const LVIM_AFTER      =$0001 ' True = insert After iItem, otherwise before
Const LVM_SETINSERTMARK                   =(LVM_FIRST + 166)
Const LVM_GETINSERTMARK                   =(LVM_FIRST + 167)
Const LVM_INSERTMARKHITTEST               =(LVM_FIRST + 168)
Const LVM_GETINSERTMARKRECT               =(LVM_FIRST + 169)
Const LVM_SETINSERTMARKCOLOR                 =(LVM_FIRST + 170)
Const LVM_GETINSERTMARKCOLOR                 =(LVM_FIRST + 171)
Const  LVM_SETINFOTIP         =(LVM_FIRST + 173)
Const LVM_GETSELECTEDCOLUMN   =(LVM_FIRST + 174)
Const LVM_ISGROUPVIEWENABLED  =(LVM_FIRST + 175)
Const LVM_GETOUTLINECOLOR     =(LVM_FIRST + 176)
Const LVM_SETOUTLINECOLOR     =(LVM_FIRST + 177)
Const LVM_CANCELEDITLABEL     =(LVM_FIRST + 179)
Const LVM_MAPINDEXTOID     =(LVM_FIRST + 180)
Const LVM_MAPIDTOINDEX     =(LVM_FIRST + 181)

Const LVN_FIRST            =-100
Const LVN_ITEMCHANGING        =(LVN_FIRST-0)
Const LVN_ITEMCHANGED         =(LVN_FIRST-1)
Const LVN_INSERTITEM          =(LVN_FIRST-2)
Const LVN_DELETEITEM          =(LVN_FIRST-3)
Const LVN_DELETEALLITEMS      =(LVN_FIRST-4)
Const LVN_BEGINLABELEDITA     =(LVN_FIRST-5)
Const LVN_BEGINLABELEDITW     =(LVN_FIRST-75)
Const LVN_ENDLABELEDITA       =(LVN_FIRST-6)
Const LVN_ENDLABELEDITW       =(LVN_FIRST-76)
Const LVN_COLUMNCLICK         =(LVN_FIRST-8)
Const LVN_BEGINDRAG           =(LVN_FIRST-9)
Const LVN_BEGINRDRAG          =(LVN_FIRST-11)
Const LVN_ODCACHEHINT         =(LVN_FIRST-13)
Const LVN_ODFINDITEMA         =(LVN_FIRST-52)
Const LVN_ODFINDITEMW         =(LVN_FIRST-79)
Const LVN_ITEMACTIVATE        =(LVN_FIRST-14)
Const LVN_ODSTATECHANGED      =(LVN_FIRST-15)
Const LVN_HOTTRACK            =(LVN_FIRST-21)
Const LVN_GETDISPINFOA        =(LVN_FIRST-50)
Const LVN_GETDISPINFOW        =(LVN_FIRST-77)
Const LVN_SETDISPINFOA        =(LVN_FIRST-51)
Const LVN_SETDISPINFOW        =(LVN_FIRST-78)
Const LVIF_DI_SETITEM         =$1000
Const LVN_KEYDOWN             =(LVN_FIRST-55)
Const LVN_MARQUEEBEGIN        =(LVN_FIRST-56)
Const LVN_GETINFOTIPA          =(LVN_FIRST-57)
Const LVN_GETINFOTIPW          =(LVN_FIRST-58)
Const LVN_BEGINSCROLL          =(LVN_FIRST-80)          
Const LVN_ENDSCROLL            =(LVN_FIRST-81)

Const CMB_MASKED              =$02

Extern "Win32"

Function ImageList_Create:Byte Ptr(cx,cy,flags:UInt,cInitial,cGrow)="HIMAGELIST __stdcall ImageList_Create(int ,int ,UINT ,int ,int )!"
Function ImageList_AddMasked(himl:Byte Ptr,hbmImage:Byte Ptr,crMask:Byte Ptr)="int __stdcall ImageList_AddMasked(HIMAGELIST ,HBITMAP ,COLORREF )!"
Function ImageList_Add(himl:Byte Ptr,hbmImage:Byte Ptr,crMask:Byte Ptr)="int __stdcall ImageList_Add(HIMAGELIST ,HBITMAP ,HBITMAP )!"
Function ImageList_Destroy( hImageList:Byte Ptr )="WINBOOL __stdcall ImageList_Destroy(HIMAGELIST )!"
Function ImageList_GetImageCount( hImageList:Byte Ptr )="int __stdcall ImageList_GetImageCount(HIMAGELIST )!"

End Extern

Extern
	Function bmx_win32_BUTTON_IMAGELIST_new:Byte Ptr()
	Function bmx_win32_BUTTON_IMAGELIST_free(handle:Byte Ptr)
	Function bmx_win32_BUTTON_IMAGELIST_Sethiml(handle:Byte Ptr, himl:Byte Ptr)
	Function bmx_win32_BUTTON_IMAGELIST_SetuAlign(handle:Byte Ptr, uAlign:UInt)
	Function bmx_win32_BUTTON_IMAGELIST_himl:Byte Ptr(handle:Byte Ptr)
	
	Function bmx_win32_NMHDR_hwndFrom:Byte Ptr(handle:Byte Ptr)
	Function bmx_win32_NMHDR_code:UInt(handle:Byte Ptr)
	
	Function bmx_win32_NMTTDISPINFOW_SetlpszText(handle:Byte Ptr, lpszText:Short Ptr)
	
	Function bmx_win32_NMLVGETINFOTIPW_pszText:Short Ptr(handle:Byte Ptr)
	Function bmx_win32_NMLVGETINFOTIPW_cchTextMax:Int(handle:Byte Ptr)
	Function bmx_win32_NMLVGETINFOTIPW_iItem:Int(handle:Byte Ptr)
	
	Function bmx_win32_NMLISTVIEW_uChanged:UInt(handle:Byte Ptr)
	
	Function bmx_win32_NMITEMACTIVATE_iItem:Int(handle:Byte Ptr)
	
	Function bmx_win32_NMTREEVIEW_itemNew:Byte Ptr(handle:Byte Ptr)
	Function bmx_win32_NMTREEVIEW_action:UInt(handle:Byte Ptr)
	Function bmx_win32_NMTREEVIEW_x:Int(handle:Byte Ptr)
	Function bmx_win32_NMTREEVIEW_y:Int(handle:Byte Ptr)
	
	Function bmx_win32_MSGFILTER_msg:UInt(handle:Byte Ptr)
	Function bmx_win32_MSGFILTER_wParam:WParam(handle:Byte Ptr)
	Function bmx_win32_MSGFILTER_lParam:LParam(handle:Byte Ptr)
	Function bmx_win32_MSGFILTER_Setmsg(handle:Byte Ptr, msg:UInt)
	
End Extern

Extern
	Function bmx_win32_TCHITTESTINFO_new:Byte Ptr()
	Function bmx_win32_TCHITTESTINFO_free(handle:Byte Ptr)
	Function bmx_win32_TCHITTESTINFO_pt:Byte Ptr(handle:Byte Ptr)
	Function bmx_win32_TCHITTESTINFO_flags:UInt(handle:Byte Ptr)
	Function bmx_win32_TCHITTESTINFO_Setx(handle:Byte Ptr, x:Int)
	Function bmx_win32_TCHITTESTINFO_Sety(handle:Byte Ptr, y:Int)
	Function bmx_win32_TCHITTESTINFO_x:Int(handle:Byte Ptr)
	Function bmx_win32_TCHITTESTINFO_y:Int(handle:Byte Ptr)
	Function bmx_win32_TCHITTESTINFO_Setflags(handle:Byte Ptr, flags:UInt)
End Extern
Type TCHITTESTINFO
	Field infoPtr:Byte Ptr
	
	Method New()
		infoPtr = bmx_win32_TCHITTESTINFO_new()
	End Method
	
	Method Delete()
		Free()
	End Method
	
	Method Free()
		If infoPtr Then
			bmx_win32_TCHITTESTINFO_free(infoPtr)
			infoPtr = Null
		End If
	End Method

	Method Setx(x:Int)
		bmx_win32_TCHITTESTINFO_Setx(infoPtr, x)
	End Method
	
	Method Sety(y:Int)
		bmx_win32_TCHITTESTINFO_Sety(infoPtr, y)
	End Method
	
	Method Setflags(flags:UInt)
		bmx_win32_TCHITTESTINFO_Setflags(infoPtr, flags)
	End Method

	Method pt:Byte Ptr()
		Return bmx_win32_TCHITTESTINFO_pt(infoPtr)
	End Method
	
	Method x:Int()
		Return bmx_win32_TCHITTESTINFO_x(infoPtr)
	End Method
	
	Method y:Int()
		Return bmx_win32_TCHITTESTINFO_y(infoPtr)
	End Method
	
	Method flags:UInt()
		Return bmx_win32_TCHITTESTINFO_flags(infoPtr)
	End Method
	
End Type

Extern
	Function bmx_win32_TVHITTESTINFO_new:Byte Ptr()
	Function bmx_win32_TVHITTESTINFO_free(handle:Byte Ptr)
	Function bmx_win32_TVHITTESTINFO_Setx(handle:Byte Ptr, x:Int)
	Function bmx_win32_TVHITTESTINFO_Sety(handle:Byte Ptr, y:Int)
	Function bmx_win32_TVHITTESTINFO_x:Int(handle:Byte Ptr)
	Function bmx_win32_TVHITTESTINFO_y:Int(handle:Byte Ptr)
	Function bmx_win32_TVHITTESTINFO_Setflags(handle:Byte Ptr, flags:UInt)
	Function bmx_win32_TVHITTESTINFO_flags:UInt(handle:Byte Ptr)
	Function bmx_win32_TVHITTESTINFO_hItem:Byte Ptr(handle:Byte Ptr)
End Extern
Type TVHITTESTINFO
	Field infoPtr:Byte Ptr
	
	Method New()
		infoPtr = bmx_win32_TVHITTESTINFO_new()
	End Method
	
	Method Delete()
		Free()
	End Method
	
	Method Free()
		If infoPtr Then
			bmx_win32_TVHITTESTINFO_free(infoPtr)
			infoPtr = Null
		End If
	End Method

	Method Setx(x:Int)
		bmx_win32_TVHITTESTINFO_Setx(infoPtr, x)
	End Method
	
	Method Sety(y:Int)
		bmx_win32_TVHITTESTINFO_Sety(infoPtr, y)
	End Method
	
	Method Setflags(flags:UInt)
		bmx_win32_TVHITTESTINFO_Setflags(infoPtr, flags)
	End Method

	Method x:Int()
		Return bmx_win32_TVHITTESTINFO_x(infoPtr)
	End Method
	
	Method y:Int()
		Return bmx_win32_TVHITTESTINFO_y(infoPtr)
	End Method
	
	Method flags:UInt()
		Return bmx_win32_TVHITTESTINFO_flags(infoPtr)
	End Method

	Method hItem:Byte Ptr()
		Return bmx_win32_TVHITTESTINFO_hItem(infoPtr)
	End Method

End Type
