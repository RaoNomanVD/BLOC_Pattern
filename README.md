# BLOC - State Mangement Flutter

This project base on bloc implementation in your project.Call data from web Api an parse it respective model and use it on UI.

## Geting Started

So before dive deep in this project , first we need to understand what Bloc is , why use it & how to use it.

# What is Bloc & why use it?

<p align="center"><img src="https://miro.medium.com/max/1400/1*Xr9UgtHrll2ZX9sY87iwGw.png" width="350" alt="accessibility text"></p>

Bloc component takes event as input, analyse it inside Bloc, and based on business logic it produces the corresponding state as output.

Think Bloc as a vending machine where you put the money and detail of product you want as input, and vending machine after analyzing and applying logic the business logic, like verifying whether the money is enough for the required item or not, it gives you the item you want as output

# What are basic bloc component?

   Event : Input from UI .

   State : Output mean  show data on UI
  
<p align="center"><img src="https://miro.medium.com/max/1146/1*3dTdRj_EQK5OM3gUs80Q5g.png" width="350" alt="accessibility text"></p>
 

In our project lib folder , we have different layer Provider, Bloc, Model and Ui . Provider is repsonsible to provide data to application via api.
In Model we have structure of our api repsonse , In Bloc we fire event get data from provider and provider it to ui.

When and event fire form ui it fetch call provider to provider data . In Bloc floder when event <b> TodoFetch </b> initiate form <b>TodoList</b> initialser it goes to bloc and call <b> mapEventToState </b> function. This event call </b>todoProvider</b> of our provider type and call getlist() method of provider. Method (getlist) call getListOfUser from api .


Once result return form api , the state called FetchedTodoSuccessedState and data save it state.


#Project Dependancies:
   
   - [rxdart](https://pub.dev/packages/rxdart)
   - [dio](https://pub.dev/packages/dio)
   - [flutter_bloc](https://pub.dev/packages/flutter_bloc)
   - [retrofit](https://pub.dev/packages/retrofit)


