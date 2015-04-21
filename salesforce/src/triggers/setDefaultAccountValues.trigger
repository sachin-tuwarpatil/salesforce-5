trigger setDefaultAccountValues on Account (before insert, before update) {  
    for (Account oAccount : trigger.new) {
        oAccount.Industry = 'Cloud Computing';
        //oAccount.OwnerId = oAccount.Contacts.OwnerId;
       
        String UserID = UserInfo.getUserId();
        System.debug("User ID:" +UserID);
    }
}