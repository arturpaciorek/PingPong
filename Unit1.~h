//---------------------------------------------------------------------------

#ifndef Unit1H
#define Unit1H
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ExtCtrls.hpp>
#include <Graphics.hpp>
#include <Menus.hpp>
#include <MPlayer.hpp>
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// IDE-managed Components
        TShape *background;
        TButton *Button1;
        TTimer *TimerLeftPaddleTop;
        TTimer *TimerLeftPaddleBoth;
        TTimer *TimerRightPaddleTop;
        TTimer *TimerRightPaddleBoth;
        TTimer *TimerBall;
        TShape *paddleLeft;
        TShape *paddleRight;
        TShape *ball;
        TButton *Button2;
        TLabel *Label2;
        TLabel *Label1;
        TLabel *points;
        TButton *Button3;
        void __fastcall Button1Click(TObject *Sender);
        void __fastcall TimerLeftPaddleTopTimer(TObject *Sender);
        void __fastcall TimerLeftPaddleBothTimer(TObject *Sender);
        void __fastcall FormKeyDown(TObject *Sender, WORD &Key,
          TShiftState Shift);
        void __fastcall FormKeyUp(TObject *Sender, WORD &Key,
          TShiftState Shift);
        void __fastcall TimerRightPaddleTopTimer(TObject *Sender);
        void __fastcall TimerRightPaddleBothTimer(TObject *Sender);
        void __fastcall TimerBallTimer(TObject *Sender);
        void __fastcall Button2Click(TObject *Sender);
        void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
        void __fastcall FormCreate(TObject *Sender);
        void __fastcall Button3Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
