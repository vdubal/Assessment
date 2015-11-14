# Overall Assessment

##### Grade: C

##### Comments:

Vlad,

I commend the effort, and I think you made some real progress so far. The project as it stands in incomplete but I see some good things in here.

Here are a few comments from what I noticed:

1. You have a Users controller with all CRUD actions specified, but you also are using Devise which performs those actions on your behalf. It's good practice not to have those actions specified if you're not using them.

2. The naming convention for your controller is not consistent. By convention, it should be one word pluralized, such as Posts or Users.

3. Make sure the repeated HTML code from your views is moved into application.html.erb (the layout).