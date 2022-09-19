

         MODEL DEFAULTS
         --------------

Model Name:         Gas Station.mod
Model Description:  
Output File:        Gas Station.out
Output Plot Style:  NOAUTO_FIT
Run Mode:           SINGLE_STEP
Trace Vars:         Q[1],Q[2],Q[3],M[1],M[2],M[3],O[1],O[2],O[3]
Random Number Seed: 12345
Initial Values:     0,0,0,1,1,1,1,1,1
Ending Condition:   STOP_ON_TIME
Ending Time:        1000.000
Trace Events:       ALL EVENTS TRACED
Hide Edges:         



         STATE VARIABLES
         ---------------

     State Variable #1
Name:          Q
Description:   
Type:          INTEGER
Size:          4

     State Variable #2
Name:          M
Description:   
Type:          INTEGER
Size:          4

     State Variable #3
Name:          K
Description:   
Type:          INTEGER
Size:          1

     State Variable #4
Name:          O
Description:   
Type:          INTEGER
Size:          4



          VERTICES
          --------

     Vertex #1
Name:             Run
Description:      
State Changes:    
Parameter(s):     Q[1],Q[2],Q[3],M[1],M[2],M[3],O[1],O[2],O[3]
Bitmap(Inactive): 
Bitmap(Active):   
Use Flowchart Shapes:   0
Use Opaque Bitmaps:   0
Location:         X: -1.06;  Y:  1.87;  Z: -1.00;
Local Trace:      
Trace Location:   Bottom

     Vertex #2
Name:             Arrive
Description:      
State Changes:    
Parameter(s):     
Bitmap(Inactive): 
Bitmap(Active):   
Use Flowchart Shapes:   0
Use Opaque Bitmaps:   0
Location:         X: -0.07;  Y:  1.87;  Z: -1.00;
Local Trace:      
Trace Location:   Bottom

     Vertex #3
Name:             Check1
Description:      
State Changes:    
Parameter(s):     
Bitmap(Inactive): 
Bitmap(Active):   
Use Flowchart Shapes:   0
Use Opaque Bitmaps:   0
Location:         X:  0.75;  Y:  2.77;  Z: -1.00;
Local Trace:      
Trace Location:   Bottom

     Vertex #4
Name:             Check3
Description:      
State Changes:    
Parameter(s):     
Bitmap(Inactive): 
Bitmap(Active):   
Use Flowchart Shapes:   0
Use Opaque Bitmaps:   0
Location:         X:  0.68;  Y:  1.32;  Z: -1.00;
Local Trace:      
Trace Location:   Bottom

     Vertex #5
Name:             Leave
Description:      
State Changes:    
Parameter(s):     K
Bitmap(Inactive): 
Bitmap(Active):   
Use Flowchart Shapes:   0
Use Opaque Bitmaps:   0
Location:         X:  1.21;  Y:  2.16;  Z: -1.00;
Local Trace:      
Trace Location:   Bottom

     Vertex #6
Name:             Enter
Description:      
State Changes:    Q[K]=Q[K]+1
Parameter(s):     K
Bitmap(Inactive): 
Bitmap(Active):   
Use Flowchart Shapes:   0
Use Opaque Bitmaps:   0
Location:         X:  2.87;  Y:  1.87;  Z: -1.00;
Local Trace:      
Trace Location:   Bottom

     Vertex #7
Name:             Load
Description:      
State Changes:    Q[K]=Q[K]-1,M[K]=M[K]-1
Parameter(s):     K
Bitmap(Inactive): 
Bitmap(Active):   
Use Flowchart Shapes:   0
Use Opaque Bitmaps:   0
Location:         X:  3.78;  Y:  1.89;  Z: -1.00;
Local Trace:      
Trace Location:   Bottom

     Vertex #8
Name:             Fuel
Description:      
State Changes:    
Parameter(s):     K
Bitmap(Inactive): 
Bitmap(Active):   
Use Flowchart Shapes:   0
Use Opaque Bitmaps:   0
Location:         X:  4.58;  Y:  1.89;  Z: -1.00;
Local Trace:      
Trace Location:   Bottom

     Vertex #9
Name:             Payment
Description:      
State Changes:    O[K]=O[K]-1
Parameter(s):     K
Bitmap(Inactive): 
Bitmap(Active):   
Use Flowchart Shapes:   0
Use Opaque Bitmaps:   0
Location:         X:  5.27;  Y:  2.11;  Z: -1.00;
Local Trace:      
Trace Location:   Bottom

     Vertex #10
Name:             Unload
Description:      
State Changes:    M[K]=M[K]+1,O[K]=O[K]+1
Parameter(s):     K
Bitmap(Inactive): 
Bitmap(Active):   
Use Flowchart Shapes:   0
Use Opaque Bitmaps:   0
Location:         X:  6.16;  Y:  2.70;  Z: -1.00;
Local Trace:      
Trace Location:   Bottom

     Vertex #11
Name:             T out
Description:      
State Changes:    Q[K]=Q[K]-1
Parameter(s):     K
Bitmap(Inactive): 
Bitmap(Active):   
Use Flowchart Shapes:   0
Use Opaque Bitmaps:   0
Location:         X:  2.91;  Y:  2.72;  Z: -1.00;
Local Trace:      
Trace Location:   Bottom

     Vertex #12
Name:             Check2
Description:      
State Changes:    
Parameter(s):     
Bitmap(Inactive): 
Bitmap(Active):   
Use Flowchart Shapes:   0
Use Opaque Bitmaps:   0
Location:         X:  0.69;  Y:  1.87;  Z: -1.00;
Local Trace:      
Trace Location:   Bottom



          EDGES
          -----


     Graphics Edge #1

  Sub-Edge #1
Description:   
Type:          Scheduling
Origin:        Run
Destination:   Arrive
Condition:     1==1
Delay:         0
Priority:      5
Attributes:    

     Graphics Edge #2

  Sub-Edge #2
Description:   
Type:          Scheduling
Origin:        Arrive
Destination:   Check1
Condition:     
Delay:         0
Priority:      5
Attributes:    

     Graphics Edge #3

  Sub-Edge #3
Description:   
Type:          Scheduling
Origin:        Check1
Destination:   Leave
Condition:     Q[1]==3
Delay:         0
Priority:      5
Attributes:    1

     Graphics Edge #4

  Sub-Edge #4
Description:   
Type:          Scheduling
Origin:        Check3
Destination:   Leave
Condition:     Q[3]==3
Delay:         0
Priority:      5
Attributes:    3

     Graphics Edge #5

  Sub-Edge #5
Description:   
Type:          Scheduling
Origin:        Arrive
Destination:   Check3
Condition:     
Delay:         0
Priority:      5
Attributes:    

     Graphics Edge #6

  Sub-Edge #6
Description:   
Type:          Scheduling
Origin:        Arrive
Destination:   Arrive
Condition:     1==1
Delay:         2*ERL{1}
Priority:      5
Attributes:    

     Graphics Edge #7

  Sub-Edge #7
Description:   
Type:          Scheduling
Origin:        Enter
Destination:   Load
Condition:     M[K]>0
Delay:         0
Priority:      5
Attributes:    K

     Graphics Edge #8

  Sub-Edge #8
Description:   
Type:          Scheduling
Origin:        Load
Destination:   Fuel
Condition:     1==1
Delay:         1+(1.5-1)*RND
Priority:      5
Attributes:    K

     Graphics Edge #9

  Sub-Edge #9
Description:   
Type:          Scheduling
Origin:        Fuel
Destination:   Payment
Condition:     
Delay:         0
Priority:      5
Attributes:    K

     Graphics Edge #10

  Sub-Edge #10
Description:   
Type:          Scheduling
Origin:        Check3
Destination:   Enter
Condition:     Q[3]<3
Delay:         0
Priority:      5
Attributes:    3

     Graphics Edge #11

  Sub-Edge #11
Description:   
Type:          Scheduling
Origin:        Payment
Destination:   Unload
Condition:     1==1
Delay:         0.7+(1-0.7)*RND
Priority:      5
Attributes:    K

     Graphics Edge #12

  Sub-Edge #12
Description:   
Type:          Scheduling
Origin:        Enter
Destination:   T out
Condition:     M[K]==0
Delay:         1
Priority:      5
Attributes:    K

     Graphics Edge #13

  Sub-Edge #13
Description:   
Type:          Cancelling
Origin:        Unload
Destination:   T out
Condition:     Q[K]>0
Delay:         0
Priority:      5
Attributes:    K

     Graphics Edge #14

  Sub-Edge #14
Description:   
Type:          Scheduling
Origin:        Arrive
Destination:   Check2
Condition:     
Delay:         0
Priority:      5
Attributes:    

     Graphics Edge #15

  Sub-Edge #15
Description:   
Type:          Scheduling
Origin:        Check2
Destination:   Leave
Condition:     Q[2]==3
Delay:         0
Priority:      5
Attributes:    2

     Graphics Edge #16

  Sub-Edge #16
Description:   
Type:          Scheduling
Origin:        Check1
Destination:   Enter
Condition:     Q[1]<3
Delay:         0
Priority:      5
Attributes:    1

     Graphics Edge #17

  Sub-Edge #17
Description:   
Type:          Scheduling
Origin:        Check2
Destination:   Enter
Condition:     Q[2]<3
Delay:         0
Priority:      5
Attributes:    2

     Graphics Edge #18

  Sub-Edge #18
Description:   
Type:          Scheduling
Origin:        Unload
Destination:   Load
Condition:     Q[K]>0
Delay:         0
Priority:      5
Attributes:    K

