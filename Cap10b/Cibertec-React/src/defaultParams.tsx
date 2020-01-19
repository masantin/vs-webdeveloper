export default function DefaultParams(){
    let defaultCustomer={
        "id":"",
        "companyName":"",
        "ContactName":"",
        "City":"",
        "Country":"",
        "Phone":"",

    }
    return{
        customerReducer:{
            token:"",
            customers:Array<any>()
        }
    };
}