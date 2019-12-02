//---------------------------------------------------------------------------

#ifndef IHMfourH
#define IHMfourH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "four.h"
#include <Vcl.ExtCtrls.hpp>
#include "mysql.h"
#include <VCLTee.Chart.hpp>
#include <VCLTee.Series.hpp>
#include <VCLTee.TeeFunci.hpp>
#include <VclTee.TeeGDIPlus.hpp>
#include <VCLTee.TeEngine.hpp>
#include <VCLTee.TeeProcs.hpp>
#include <string>

using namespace std;
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// Composants gérés par l'EDI
	TLabel *Label1;
	TLabel *LblTemp;
	TLabel *LblCommande;
	TComboBox *ListTemp;
	TTimer *Timer1;
	TTimer *Timer2;
	TEdit *EdtTemp;
	TLabel *LblCommandeTemp;
	TButton *BtnStart;
	TButton *BtnArret;
	TChart *Chart1;
	TFastLineSeries *Series1;
	TAddTeeFunction *TeeFunction1;
	void __fastcall Timer1Timer(TObject *Sender);
	void __fastcall Timer2Timer(TObject *Sender);
	void __fastcall BtnStartClick(TObject *Sender);
	void __fastcall BtnArretClick(TObject *Sender);
	void __fastcall ListTempChange(TObject *Sender);


private:
four *ATTFOUR;
int temperature;
int tempcom;
float voltage;	// Déclarations utilisateur
public:		// Déclarations utilisateur
	__fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
