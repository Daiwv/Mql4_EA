//+------------------------------------------------------------------+
//|                                                   firstRobot.mq4 |
//|                                                           CCrico |
//|                               https://www.facebook.com/trashrico |
//+------------------------------------------------------------------+
#property copyright "CCrico"
#property link      "https://www.facebook.com/trashrico"
#property version   "1.00"
#property strict
     
/*int OnInit() { return(INIT_SUCCEEDED); }
void OnDeinit(const int reason) {} */
 
void OnTick()
  {  
      Comment("Code by HT3Rico_");    
      int donvi = 1;
      bool ck;
      if (OrdersTotal() == 0)
      {  
         int ran  = rand()%2;
         if (ran == 1) {
                         ck = OrderSelect(OrdersHistoryTotal()-1,SELECT_BY_POS,MODE_HISTORY);
                         if (OrderProfit() > 0) { int ticket = OrderSend(Symbol(),OP_BUY,0.01 * donvi,Ask,13,Ask - 100*Point,Ask + 100*Point,"Robot_Trade",144,NULL,Green); }
                              else
                              {
                                 ck = OrderSelect(OrdersHistoryTotal()-2,SELECT_BY_POS,MODE_HISTORY);   
                                 if (OrderProfit() > 0) { int ticket = OrderSend(Symbol(),OP_BUY,0.03 * donvi,Ask,13,Ask - 100*Point,Ask + 100*Point,"Robot_Trade",144,NULL,Green); }
                                                      else
                                                      {
                                                             ck = OrderSelect(OrdersHistoryTotal()-3,SELECT_BY_POS,MODE_HISTORY);   
                                                             if (OrderProfit() > 0) { int ticket = OrderSend(Symbol(),OP_BUY,0.07 * donvi,Ask,13,Ask - 100*Point,Ask + 100*Point,"Robot_Trade",144,NULL,Green); }
                                                                                  else
                                                                                  {
                                                                                           ck = OrderSelect(OrdersHistoryTotal()-4,SELECT_BY_POS,MODE_HISTORY);
                                                                                           if (OrderProfit() > 0) { int ticket = OrderSend(Symbol(),OP_BUY,0.15 * donvi,Ask,13,Ask - 100*Point,Ask + 100*Point,"Robot_Trade",144,NULL,Green); }
                                                                                                                else
                                                                                                                {
                                                                                                                     ck = OrderSelect(OrdersHistoryTotal()-5,SELECT_BY_POS,MODE_HISTORY);
                                                                                                                     if (OrderProfit() > 0) { int ticket = OrderSend(Symbol(),OP_BUY,0.31 * donvi,Ask,13,Ask - 100*Point,Ask + 100*Point,"Robot_Trade",144,NULL,Green); }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                                ck = OrderSelect(OrdersHistoryTotal()-6,SELECT_BY_POS,MODE_HISTORY); 
                                                                                                                                                if (OrderProfit() > 0) { int ticket = OrderSend(Symbol(),OP_BUY,0.63 * donvi,Ask,13,Ask - 100*Point,Ask + 100*Point,"Robot_Trade",144,NULL,Green); } ; 
                                                                                                                                                                     
                                                                                                                                          };
                                                                                                                };
                                                                                  };
                                                      };
                              };
                           }
                    else
                     {
                         ck = OrderSelect(OrdersHistoryTotal()-1,SELECT_BY_POS,MODE_HISTORY);
                         if (OrderProfit() > 0) { int ticket = OrderSend(Symbol(),OP_SELL,0.01 * donvi,Bid,13,Bid + 100*Point,Bid - 100*Point,"Robot_Trade",144,NULL,Green); }
                              else
                              {
                                 ck = OrderSelect(OrdersHistoryTotal()-2,SELECT_BY_POS,MODE_HISTORY);   
                                 if (OrderProfit() > 0) { int ticket = OrderSend(Symbol(),OP_SELL,0.03 * donvi,Bid,13,Bid + 100*Point,Bid - 100*Point,"Robot_Trade",144,NULL,Green); }
                                                      else
                                                      {
                                                             ck = OrderSelect(OrdersHistoryTotal()-3,SELECT_BY_POS,MODE_HISTORY);   
                                                             if (OrderProfit() > 0) { int ticket = OrderSend(Symbol(),OP_SELL,0.07 * donvi,Bid,13,Bid + 100*Point,Bid - 100*Point,"Robot_Trade",144,NULL,Green); }
                                                                                  else
                                                                                  {
                                                                                           ck = OrderSelect(OrdersHistoryTotal()-4,SELECT_BY_POS,MODE_HISTORY);
                                                                                           if (OrderProfit() > 0) { int ticket = OrderSend(Symbol(),OP_SELL,0.15 * donvi,Bid,13,Bid + 100*Point,Bid - 100*Point,"Robot_Trade",144,NULL,Green); }
                                                                                                                else
                                                                                                                {
                                                                                                                     ck = OrderSelect(OrdersHistoryTotal()-5,SELECT_BY_POS,MODE_HISTORY);
                                                                                                                     if (OrderProfit() > 0) { int ticket = OrderSend(Symbol(),OP_SELL,0.31 * donvi,Bid,13,Bid + 100*Point,Bid - 100*Point,"Robot_Trade",144,NULL,Green); }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                                ck = OrderSelect(OrdersHistoryTotal()-6,SELECT_BY_POS,MODE_HISTORY); 
                                                                                                                                                if (OrderProfit() > 0) { int ticket = OrderSend(Symbol(),OP_SELL,0.63 * donvi,Bid,13,Bid + 100*Point,Bid - 100*Point,"Robot_Trade",144,NULL,Green); }; 
                                                                                                                                                                     
                                                                                                                                          };
                                                                                                                };
                                                                                  };
                                                      };
                              };                     
                     };   
      };
     
   }  
//+------------------------------------------------------------------+
