//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
#include "Unit2.h"
#include "mmsystem.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
float x = 7, y = 7;
int resultLeftPlayer = 0, resultRightPlayer = 0;
int numberOfBounces = 0;
int numberOfRound = 1;
AnsiString how = "";

 void initiationOfInitialParameters()
{
   //parametry ekranu
   Form1->Label1->Left = Form1->background->Width/2 - Form1->Label1->Width/2;
   Form1->Label2->Left = Form1->background->Width/2 - Form1->Label2->Width/2;
   Form1->Button2->Left = Form1->background->Width/2 - Form1->Button2->Width/2;
   Form1->Button1->Left = Form1->background->Width/2 - Form1->Button1->Width/2;
   Form1->Button3->Left = 40;
   Form1->Button3->Top = Form1->background->Height - Form1->Button3->Height - 40;


   Form1->points->Visible = false;
   Form1->Label1->Visible = false;
   Form1->Label2->Visible = false;
   Form1->Button2->Visible = false;
   Form1->Button1->Visible = true;
   Form1->Button3->Visible = true;

   //Wielkosc Pilki
     //Mala
     if(Form2->RadioGroup2->ItemIndex==0)
     {
        Form1->ball->Width = 20;
        Form1->ball->Height = 20;
     }
     //Œerednia - default
     else if(Form2->RadioGroup2->ItemIndex==1)
     {
        Form1->ball->Width = 30;
        Form1->ball->Height = 30;
     }
     //Duza
     else if(Form2->RadioGroup2->ItemIndex==2)
     {
        Form1->ball->Width = 45;
        Form1->ball->Height = 45;
     }

     //Wielkosc Paletki
     //Mala
     if(Form2->RadioGroup1->ItemIndex==0)
     {
        Form1->paddleLeft->Width = 30;
        Form1->paddleLeft->Height = 100;
        Form1->paddleRight->Width = 30;
        Form1->paddleRight->Height = 100;
     }
     //Œerednia - default
     else if(Form2->RadioGroup1->ItemIndex==1)
     {
        Form1->paddleLeft->Width = 30;
        Form1->paddleLeft->Height = 150;
        Form1->paddleRight->Width = 30;
        Form1->paddleRight->Height = 150;
     }
     //Duza
     else if(Form2->RadioGroup1->ItemIndex==2)
     {
        Form1->paddleLeft->Width = 30;
        Form1->paddleLeft->Height = 250;
        Form1->paddleRight->Width = 30;
        Form1->paddleRight->Height = 250;
     }
     

   //wspolrzedne poczatkowe paletek
   Form1->paddleLeft->Left = 80;
   Form1->paddleLeft->Top = Form1->background->Height/2 - Form1->paddleLeft->Height/2;
   Form1->paddleRight->Left = Form1->background->Width - 80 - Form1->paddleRight->Width;
   Form1->paddleRight->Top = Form1->background->Height/2 - Form1->paddleRight->Height/2;

   //Muzyka Tak


}

//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button1Click(TObject *Sender)
{
     initiationOfInitialParameters();
     resultLeftPlayer = 0,
     resultRightPlayer = 0;
     numberOfBounces = 0;
     numberOfRound = 1;
     how = "leftPlayer";

     TimerBall->Enabled = true;
     ball->Visible = true;

     Button1->Visible = false;
     Button3->Visible = false;

     ball->Left = 130;
     randomize();
     ball->Top = random(background->Height - 100) + 50;
     x = 7, y = 7;

}
//---------------------------------------------------------------------------
void __fastcall TForm1::TimerLeftPaddleTopTimer(TObject *Sender)
{
        if( paddleLeft->Top > 5)   paddleLeft->Top-=5;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::TimerLeftPaddleBothTimer(TObject *Sender)
{
        if( paddleLeft->Top + paddleLeft->Height < background->Height-5)
        paddleLeft->Top+=5;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::FormKeyDown(TObject *Sender, WORD &Key,
      TShiftState Shift)
{
        if (Key == VK_UP)  TimerRightPaddleTop->Enabled = true;
        if (Key == VK_DOWN) TimerRightPaddleBoth->Enabled = true;
        if (Key == 0x41)  TimerLeftPaddleTop->Enabled = true;   //0x41 A
        if (Key == 0x5A)   TimerLeftPaddleBoth->Enabled = true; //0x5A Z

}
//---------------------------------------------------------------------------
void __fastcall TForm1::FormKeyUp(TObject *Sender, WORD &Key,
      TShiftState Shift)
{
        if (Key == VK_UP)  TimerRightPaddleTop->Enabled = false;
        if (Key == VK_DOWN) TimerRightPaddleBoth->Enabled = false;
        if (Key == 0x41)  TimerLeftPaddleTop->Enabled = false;   //0x41 A
        if (Key == 0x5A)   TimerLeftPaddleBoth->Enabled = false; //0x5A Z
}
//---------------------------------------------------------------------------
void __fastcall TForm1::TimerRightPaddleTopTimer(TObject *Sender)
{
        if( paddleRight->Top > 5)   paddleRight->Top-=5;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::TimerRightPaddleBothTimer(TObject *Sender)
{
        if( paddleRight->Top + paddleRight->Height < background->Height-5)
        paddleRight->Top+=5;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::TimerBallTimer(TObject *Sender)
{
   //ruch pocz¹tkowy pi³ki
   ball->Left += x;
   ball->Top += y;

   //odbijaj od górnej sciany
   if (ball->Top - 5 <= background->Top) y = -y ;

   //odbijaj od dolnej sciany
   if (ball->Top + ball->Height + 1 >= background->Height) y = -y;

   //skucha!
    if ((( ball->Left < paddleLeft->Left  &&
        (ball->Top + ball->Height / 2 < paddleLeft->Top ||
        ball->Top + ball->Height / 2 > paddleLeft->Top + paddleLeft->Height)) ||
        (ball->Left + ball->Width > paddleRight->Left + paddleRight->Width &&
        (ball->Top + ball->Height / 2 < paddleRight->Top ||
        ball->Top + ball->Height / 2 > paddleRight->Top + paddleRight->Height))))
    {
        TimerBall->Enabled = false;
        ball->Visible = false;
        if (how == "leftPlayer")
        {
                points->Caption = " <-- Punkt dla gracza lewego ";
                resultLeftPlayer++;
                numberOfRound++;
         }
        else if (how == "rightPlayer")
        {
                points->Caption = " Punkt dla gracza prawego --> ";
                resultRightPlayer++;
                numberOfRound++;
        }

        points->Left = background->Width/2 - points->Width/2;
        points->Visible = true;
        Label1->Caption = "Wynik: " + IntToStr(resultLeftPlayer) + ":" + IntToStr(resultRightPlayer);
        Label1->Visible = true;
        Label2->Caption = " Iloœæ odbiæ:" + IntToStr(numberOfBounces);
        Label2->Visible = true;
        Button1->Visible = true;
        Button2->Visible = true;
        Button3->Visible = true;

      }

   //odbicie pilki od paletki lewej najprostsza
   else if ((ball->Left < paddleLeft->Left + paddleLeft->Width &&
           ball->Top + ball->Height/2 <= paddleLeft->Top + paddleLeft->Height &&
           ball->Top + ball->Height/2 >= paddleLeft->Top))
       {
                x = 1.1 * x;
                numberOfBounces++;
                how = "leftPlayer";
                if(x < 0)
                {
                        //Strefa górna
                        if ((ball->Left <= paddleLeft->Left + paddleLeft->Width &&
                        ball->Top + ball->Height/2 < paddleLeft->Top + paddleLeft->Height/3 &&
                        ball->Top + ball->Height/2 >= paddleLeft->Top))
                        {
                                x = -  0.9 * x;
                                y = 0.9 * y;
                        }

                        //strefa srodkowa
                        else if ((ball->Left <= paddleLeft->Left + paddleLeft->Width &&
                        ball->Top + ball->Height/2 <= paddleLeft->Top + 2 * paddleLeft->Height/3 &&
                        ball->Top + ball->Height/2 >= paddleLeft->Top + paddleLeft->Height/3))
                        {
                                x = - x;
                        }
                        //strefa dolne
                        else if ((ball->Left <= paddleLeft->Left + paddleLeft->Width &&
                        ball->Top + ball->Height/2 <= paddleLeft->Top +  paddleLeft->Height &&
                        ball->Top + ball->Height/2 > paddleLeft->Top + 2/3 * paddleLeft->Height))
                        {
                                x = -1.2 * x;
                                y = 1.2 * y;
                        }
                }
       }


        //odbicie pilki od paletki prawej
else if ((ball->Left + ball->Width >= paddleRight->Left  &&
           ball->Top + ball->Height/2 <= paddleRight->Top + paddleRight->Height &&
           ball->Top + ball->Height/2 >= paddleRight->Top))
            {
                x =  1.1 * x;
                numberOfBounces++;
                how = "rightPlayer";
                if(x > 0)
                {
                        //Strefa górna
                        if ((ball->Left + ball->Width >= paddleRight->Left &&
                        ball->Top + ball->Height/2 < paddleRight->Top + paddleRight->Height/3 &&
                        ball->Top + ball->Height/2 >= paddleRight->Top))
                        {
                                x = -  0.9 * x;
                                y = 0.9 * y;
                        }

                        //strefa srodkowa
                        else if ((ball->Left <= paddleRight->Left + paddleRight->Width &&
                        ball->Top + ball->Height/2 <= paddleRight->Top + 2 * paddleRight->Height/3 &&
                        ball->Top + ball->Height/2 >= paddleRight->Top + paddleRight->Height/3))
                        {
                                x = - x;
                        }
                        //strefa dolna
                        else if ((ball->Left <= paddleRight->Left + paddleRight->Width &&
                        ball->Top + ball->Height/2 <= paddleRight->Top +  paddleRight->Height &&
                        ball->Top + ball->Height/2 > paddleRight->Top + 2/3 * paddleRight->Height))
                        {
                                x = -1.2 * x;
                                y = 1.2 * y;
                        }
                }
       }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button2Click(TObject *Sender)
{
     initiationOfInitialParameters();

     TimerBall->Enabled = true;
     ball->Visible = true;

     Button1->Visible = false;
     Button3->Visible = false;
     numberOfBounces = 0;


     //serwuje prawy gracz
     if (numberOfRound> 1 && numberOfRound % 2 == 0)
     {
        ball->Left = background->Width - 80 - paddleRight->Width - 10;
        x = -7, y = -7;
     }
     //serwuje lewy gracz
     else if (numberOfRound > 1 && numberOfRound % 2 == 1)
     {
         ball->Left = 130;
         x = 7, y = 7;
     }
        randomize();
        ball->Top = random(background->Height - 100) + 50 ;

}
//---------------------------------------------------------------------------


void __fastcall TForm1::FormClose(TObject *Sender, TCloseAction &Action)
{
        if(Application->MessageBoxA("Czy na pewno zakonczyc program?", "Potwierdz",
        MB_YESNO | MB_ICONQUESTION)==IDNO)
        {
                Action = caNone;
        }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::FormCreate(TObject *Sender)
{
     Application->MessageBox(
        "Witaj w grze PingPong.\n\n"
        "Lewy gracz steruje wciskaj¹c klawisze A oraz Z.\n"
        "Prawy gracz steruje wciskaj¹c strza³ki do góry i w dó³.\n\n"
        "Dla urozmaicenia zabawy:\n"
        "Paletka posiada trzy strefy.\n"
        "Pi³ka odbija sie z ró¿n¹ predkoœci¹ w zaleœnoœci od strefy.\n"
        "Im d³u¿ej odbijasz, tym pi³ka szybciej siê porusza.\n"
        "Mo¿esz dowolnie zmieniaæ pole gry.\n\n"
        "Serwuje siê na zmianê. Pierwszy serwuje gracz lewy.\n\n"
        "Udanej zabawy!", "PingPong",MB_OK);

}
//---------------------------------------------------------------------------


void __fastcall TForm1::Button3Click(TObject *Sender)
{
  Form2-> ShowModal();
}
//---------------------------------------------------------------------------



