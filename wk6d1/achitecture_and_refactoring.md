#Architecture  

Components of our achitecture:  
- view  
- controller  
- model  
- API's  
- data  

**View**  

The view only knows about what the controller tells it.  
The view knows about the controller through specific actions, and has access to the instance variables in that action.  

**Helpers*  
These are modules. They are for code that does useful things, but does not have another place to go.  
The view knows about helpers through rails magic.  
General purpose == functions.  

**Model**  
The model encapsulates data. It is the only part of the adchitecture that knows the database exists.  

**APIs**  
APIs are part of our data, so these belong in the models.  